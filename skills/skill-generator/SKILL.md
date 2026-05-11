---
name: skill-generator
description: Create or update repository-local skills required by the task plan. Use when the orchestrator detects missing reusable capabilities.
---

# Skill Generator

## Overview

Generate missing skills required to execute planned tasks, while preferring updates to existing skills when possible.

## Workflow

1. Read current skills under `../../skills/*/SKILL.md`.
2. Compare required capabilities from the task plan to existing coverage.
3. Decide `update existing` or `create new` for each missing capability.
4. For each selected change, produce:
- `SKILL.md` with name, description, workflow, rules, output contract
- `agents/openai.yaml` default prompt
5. Keep all generated skills repo-local under `../../skills/`.

## Decision Rules

- Prefer updating an existing skill unless separation is clearly needed.
- Create a new skill only when overlap would make a skill ambiguous or overly broad.
- Keep skills composable and single-purpose.

## Output Contract

```text
Skill Lifecycle Decisions:
1. <capability>: <updated existing|created new> - <rationale>

Generated/Updated Artifacts:
- <path>
- <path>

Usage Notes:
- <how orchestrator should call the skill>
```
