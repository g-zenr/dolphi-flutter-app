---
name: task-orchestrator
description: Orchestrate execution using a strict chain of prompt generation, task planning, optional skill generation, and implementation handoff. Always enforce plan-first behavior.
---

# Task Orchestrator

## Overview

Run the skill chain in a fixed order and enforce planning before implementation.

## Mandatory Chain

1. `$codex-prompt-generator`
2. `$task-generator`
3. `$skill-generator` (only when capability gaps exist)
4. Implementation skill (for this repo, usually `$dolphi-agent-executor`)

## Planning Policy (Always Apply)

- Plan Mode is mandatory before any code change.
- No implementation starts until the task plan is complete and validated.
- Every task must include validation steps.
- Every implementation plan must include a readability/simplicity check against `docs/architecture/KARPATHY_CODING_GUIDELINES.md`.
- If requirements are ambiguous or inputs are missing, stop and request clarification. Do not allow assumption-based planning.

## Workflow

1. Generate normalized prompt with `$codex-prompt-generator`.
2. Convert prompt to task backlog with `$task-generator`.
3. Audit capability gaps against existing local skills.
4. If gaps exist, run `$skill-generator` to create/update required skills.
5. Handoff finalized, dependency-ordered plan to implementation skill.
6. Require implementation summary with changed files, validation results, and risks.

## Output Contract

```text
Orchestration Summary:
- Prompt: generated
- Task Plan: generated
- Skill Gaps: <none|list>
- Skill Lifecycle Action: <not needed|updated existing|created new>
- Implementation Handoff Skill: <skill name>

Approved Plan:
1. <task sequence>

Readiness Gate:
- Planning complete: yes
- Validation attached to every task: yes
- No assumptions used: yes
- Implementation allowed: yes
```
