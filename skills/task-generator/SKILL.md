---
name: task-generator
description: Convert an execution-ready prompt into a concrete task backlog with sequence, ownership, dependencies, and validation steps. Use after prompt generation and before orchestration.
---

# Task Generator

## Overview

Transform a prompt into an actionable task list that an orchestrator can execute safely.

## Required Inputs

1. Final prompt from `$codex-prompt-generator`
2. Repository scope and constraints
3. Acceptance criteria and validation commands

## Workflow

1. Parse objective, scope, constraints, and acceptance criteria.
2. Split work into atomic tasks with one clear output each.
3. Add dependency order and identify parallel-safe tasks.
4. Attach validation per task (tests, typecheck, lint, manual checks).
5. Mark blockers, risks, and unknowns explicitly.
6. Include a simplicity/readability check against `docs/architecture/KARPATHY_CODING_GUIDELINES.md`.

## Output Contract

Return only this structure:

```text
Task Plan:
1. <task title>
- Owner: <role or skill>
- Inputs: <required inputs>
- Outputs: <expected artifacts>
- Dependencies: <task ids or none>
- Validation: <commands/checks>
- Risk: <low|medium|high + note>

Execution Order:
1. <ordered sequence with optional parallel groups>

Blockers:
- <blocker or none>

Missing Required Inputs:
- <missing input list or none>
```

## Rules

- Keep tasks minimal, verifiable, and ordered.
- Do not skip validation requirements from the source prompt.
- Do not invent missing details; if required inputs are missing, return blockers and stop.
- Do not start implementation; produce plan-ready tasks only.
