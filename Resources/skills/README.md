# Sarisari Skills

A collection of Claude Code skills (slash commands) for automating workflows.

## Skills

| Skill | Description |
|-------|-------------|
| `ux-audit` | Automated UX audit for fintech websites. Provide a URL and get a comprehensive report with scores, findings, and recommendations. |

## Setup

To use these skills in Claude Code, symlink or copy them into your project's `.claude/commands/` directory:

```bash
# From your project root
mkdir -p .claude/commands
cp /path/to/sarisari/skills/ux-audit.md .claude/commands/
```

Or make them globally available:

```bash
mkdir -p ~/.claude/commands
cp /path/to/sarisari/skills/ux-audit.md ~/.claude/commands/
```

## Usage

Once installed, invoke any skill in Claude Code:

```
/ux-audit https://example-fintech.com
```
