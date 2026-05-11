# Skills Guide

## Purpose

This folder contains repo-local skills used to run Dolphi work with a strict plan-first workflow.

## Documentation Standards

- Policy: [DOCUMENTATION_POLICY.md](DOCUMENTATION_POLICY.md)
- Lifecycle log: [SKILL_CHANGELOG.md](SKILL_CHANGELOG.md)
- Coding style baseline: `../docs/architecture/KARPATHY_CODING_GUIDELINES.md`

## Mandatory Execution Chain

Use this sequence for implementation and documentation work:

1. `$codex-prompt-generator`
2. `$task-generator`
3. `$task-orchestrator`
4. `$skill-generator` (only if capability gaps are detected)
5. Target execution skill (for example `$dolphi-agent-executor` or `$dolphi-doc-maintainer`)

Implementation must not start before planning is complete.

## Skill Catalog

- `$codex-prompt-generator`: turns a rough request into an execution-ready prompt.
- `$task-generator`: converts the prompt into dependency-aware tasks with validation.
- `$task-orchestrator`: enforces plan-first flow and gates implementation readiness.
- `$skill-generator`: creates or updates repo-local skills required by the task plan.
- `$dolphi-agent-executor`: executes code changes under Dolphi governance and product constraints.
- `$dolphi-doc-maintainer`: synchronizes docs and architecture/governance consistency.
- `$github-push-helper`: publishes local changes to GitHub with a safe non-interactive flow.

## Trigger Rules

- If a request is vague, start with `$codex-prompt-generator`.
- If a request requires coding or docs edits, route through `$task-orchestrator`.
- If planned tasks need a missing reusable capability, run `$skill-generator`.
- If pushing changes to GitHub, still use `$task-orchestrator` first, then `$github-push-helper`.

## Quick Start Prompts

- Feature or bug work:
`Use $task-orchestrator for this request, then hand off to $dolphi-agent-executor.`

- Documentation sync:
`Use $task-orchestrator for this request, then hand off to $dolphi-doc-maintainer.`

- Publish to GitHub:
`Use $task-orchestrator for this request, then hand off to $github-push-helper.`

## Maintenance Checklist

For every future skill update, complete all items:
1. Update target `SKILL.md`.
2. Update target `agents/openai.yaml`.
3. Update this `skills/README.md` if routing or catalog changed.
4. Add lifecycle record to `skills/SKILL_CHANGELOG.md`.
