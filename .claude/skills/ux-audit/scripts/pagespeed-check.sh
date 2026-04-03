#!/bin/bash
# PageSpeed Insights API check with retry logic
# Usage: bash pagespeed-check.sh <URL> [mobile|desktop]
#
# Outputs structured JSON with Core Web Vitals metrics.
# Retries up to 3 times with exponential backoff on rate limits (429).
# If all attempts fail, outputs a structured error JSON instead of crashing.

URL="${1:?Usage: pagespeed-check.sh <URL> [mobile|desktop]}"
STRATEGY="${2:-mobile}"
MAX_RETRIES=3
RETRY_DELAY=5

API_URL="https://www.googleapis.com/pagespeedonline/v5/runPagespeed?url=${URL}&strategy=${STRATEGY}&category=performance&category=accessibility&category=seo"

for attempt in $(seq 1 $MAX_RETRIES); do
  RESPONSE=$(curl -s -w "\n%{http_code}" "$API_URL" 2>/dev/null)
  HTTP_CODE=$(echo "$RESPONSE" | tail -n1)
  BODY=$(echo "$RESPONSE" | sed '$d')

  if [ "$HTTP_CODE" = "200" ]; then
    # Extract key metrics using python (available in most environments)
    echo "$BODY" | python3 -c "
import json, sys
data = json.load(sys.stdin)

lh = data.get('lighthouseResult', {})
categories = lh.get('categories', {})
audits = lh.get('audits', {})

result = {
  'strategy': '$STRATEGY',
  'url': '$URL',
  'scores': {
    'performance': categories.get('performance', {}).get('score', None),
    'accessibility': categories.get('accessibility', {}).get('score', None),
    'seo': categories.get('seo', {}).get('score', None),
  },
  'metrics': {},
  'status': 'success'
}

# Convert scores from 0-1 to 0-100
for k, v in result['scores'].items():
  if v is not None:
    result['scores'][k] = int(v * 100)

# Extract Core Web Vitals
metric_map = {
  'largest-contentful-paint': 'LCP',
  'cumulative-layout-shift': 'CLS',
  'total-blocking-time': 'TBT',
  'first-contentful-paint': 'FCP',
  'speed-index': 'SpeedIndex',
  'interactive': 'TTI',
}

for audit_key, display_name in metric_map.items():
  audit = audits.get(audit_key, {})
  if audit:
    result['metrics'][display_name] = {
      'value': audit.get('displayValue', 'N/A'),
      'score': audit.get('score', None),
      'numeric': audit.get('numericValue', None),
    }

print(json.dumps(result, indent=2))
" 2>/dev/null
    exit 0
  elif [ "$HTTP_CODE" = "429" ]; then
    if [ "$attempt" -lt "$MAX_RETRIES" ]; then
      sleep $RETRY_DELAY
      RETRY_DELAY=$((RETRY_DELAY * 2))
    fi
  else
    # Non-retryable error
    break
  fi
done

# All retries exhausted or non-retryable error
echo "{
  \"strategy\": \"$STRATEGY\",
  \"url\": \"$URL\",
  \"status\": \"failed\",
  \"error\": \"PageSpeed API returned HTTP $HTTP_CODE after $MAX_RETRIES attempts\",
  \"recommendation\": \"Run manually at https://pagespeed.web.dev/analysis?url=$URL\"
}"
exit 1
