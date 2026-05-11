---
name: dolphi-agent-executor
description: Execute implementation work in the Dolphi codebase using the project's policy, workflow, and response template. Use when handling any feature, bug fix, refactor, test, or documentation request in this repository that must comply with offline-first privacy, BRD/PRD scope, and change-control rules.
---

# Dolphi Agent Executor

## Overview

Apply the repository's operating rules for every task and keep outputs aligned with docs/product/BRD.md and docs/product/PRD.md.

## Required Context Loading Order

Read these files in this order before implementation:

1. `../../agent.md`
2. `../../docs/governance/AGENT_POLICY.md`
3. `../../docs/governance/AGENT_WORKFLOW.md`
4. `../../docs/governance/AGENT_TEMPLATE.md`
5. `../../docs/product/BRD.md`
6. `../../docs/product/PRD.md`
7. `../../docs/architecture/KARPATHY_CODING_GUIDELINES.md`
8. `../codex-prompt-generator/SKILL.md`

## Execution Rules

1. Use `$task-orchestrator` first for every prompt. This enforces `$codex-prompt-generator -> $task-generator -> optional $skill-generator` before implementation.
2. Follow the full step order in `docs/governance/AGENT_WORKFLOW.md` for every prompt.
3. Enforce all policy constraints in `docs/governance/AGENT_POLICY.md`.
4. Map requested changes to BRD/PRD requirements and acceptance criteria.
5. Keep edits minimal and within approved scope.
6. Preserve local-first privacy defaults and offline behavior.
7. Apply Karpathy-style simplicity and readability rules from `docs/architecture/KARPATHY_CODING_GUIDELINES.md`.
8. Flag and document any scope, schema, or memory-model changes before implementation.
9. If new reusable behavior is needed, invoke `$skill-generator` first to create/update required skill artifacts.
10. Keep all skill artifacts repo-local under `../../skills/` and do not create skills in global `.codex/skills`.

## Privacy Gate (Always Apply)

- Do not add automatic cloud upload behavior.
- Keep user files and derived artifacts local by default.
- Require explicit user action for Export/backup actions.
- Call out privacy impact in the final response, even when there is no impact.

## Change-Control Gate (Always Apply)

Before coding, verify:

- Scope expansion beyond BRD/PRD is documented.
- Schema or memory logic changes include migration and rollback notes.
- Any privacy-weakening proposal is escalated as a product decision.

## Output Contract

Return implementation updates using the exact fields in `../../docs/governance/AGENT_TEMPLATE.md`.

## Task Types Supported

- Feature implementation
- Bug fixes
- Refactors
- Test additions and hardening
- Documentation updates tied to BRD/PRD


