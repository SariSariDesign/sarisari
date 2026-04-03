# Common Fintech UX Patterns

## Overview

This document captures recurring UX patterns and design principles that apply across most fintech products we work on. Use this as a reference when starting new client work or when an agent needs context on fintech design best practices.

## Onboarding and KYC Flows

**Progressive disclosure over upfront complexity.** Don't show users every field they'll need to fill out on page one. Break the flow into clear steps with progress indicators. Collect the minimum required information at each step.

**Set expectations early.** Tell users what they'll need before they start (government ID, proof of address, SSN, etc.). Surprises mid-flow cause abandonment.

**Inline validation, not end-of-form errors.** Validate fields as users complete them. A user who discovers three errors after clicking "Submit" is more likely to abandon than one who corrects issues in real time.

**Save progress.** If a user leaves mid-flow, let them pick up where they left off. This is especially important for KYC flows that require document uploads, since users may need to leave to find their documents.

**Humanize verification.** Instead of "Your identity is being verified," try "We're checking your details — this usually takes about 2 minutes." Transparency reduces anxiety in high-trust moments.

## Payment and Transaction Flows

**Confirmation before commitment.** Always show a clear summary before the user confirms a payment or transaction. Include all fees, amounts, and recipients. No surprises.

**Mask sensitive data by default.** Show last four digits of card numbers and account numbers. Allow users to reveal the full number if they choose.

**Clear success and error states.** After a transaction, the user should immediately know whether it succeeded, failed, or is pending. Use distinct visual treatments for each state.

## Dashboard and Data Display

**Lead with what matters.** The first thing a user sees on their dashboard should be the most important metric or status for their use case. Don't make them scroll past promotional content to find their balance or recent transactions.

**Scannable over comprehensive.** Dense data tables are appropriate for power users and internal tools, but consumer-facing fintech products should prioritize clarity and hierarchy. Use progressive disclosure to let users drill into detail without cluttering the primary view.

## Trust and Security Indicators

**Make security visible.** Users in fintech products are entrusting you with their money and personal data. Visual indicators of security (lock icons, encryption messaging, compliance badges) build confidence when used authentically. Don't overdo it — a page covered in trust badges feels desperate.

**Explain why you're asking.** When collecting sensitive information, briefly explain why it's needed. "We need your SSN to verify your identity as required by federal law" is better than just a blank SSN field.

## Error Handling and Recovery

**Never dead-end the user.** Every error state should include a clear next step. "Something went wrong" with no action is unacceptable. "We couldn't verify your document — try uploading a clearer photo" gives the user a path forward.

**Distinguish user errors from system errors.** If the user made a mistake, tell them what to fix. If the system failed, apologize and provide an alternative (retry, contact support, etc.).

## Changelog

- 2025: Common patterns documented based on fintech client work.
