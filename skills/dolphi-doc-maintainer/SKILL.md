---
name: dolphi-doc-maintainer
description: Maintain and synchronize Dolphi repository documentation after structural, policy, architecture, testing, or workflow changes. Use when any update may impact context.md, agent.md, roadmap, architecture, standards, DB spec, module docs, or testing policy files.
---

# Dolphi Doc Maintainer

## Overview

Keep documentation coherent, token-efficient, and decision-consistent across the Dolphi codebase.

## Planning And Orchestration Gate

Before editing docs, run `$task-orchestrator` so planning is always completed first:
`$codex-prompt-generator -> $task-generator -> optional $skill-generator -> $dolphi-doc-maintainer`.

## Required Context Loading Order

1. `../../context.md`
2. `../../agent.md`
3. `../../docs/governance/SETUP_ROADMAP.md`
4. `../../docs/governance/AGENT_POLICY.md`
5. `../../docs/governance/AGENT_WORKFLOW.md`
6. `../../docs/governance/AGENT_TEMPLATE.md`
7. `../../docs/architecture/architecture.md`
8. `../../docs/architecture/MOBILE_ARCHITECTURE.md`
9. `../../docs/architecture/CODING_STANDARDS.md`
10. `../../docs/architecture/DB_SPEC.md`
11. `../../tests/TESTING_POLICY.md`
12. `../../docs/product/BRD.md`
13. `../../docs/product/PRD.md`
14. `references/doc-maintenance-checklist.md`

## What To Maintain

- Root context/index coherence: `context.md`, `agent.md`
- Governance docs: `docs/governance/SETUP_ROADMAP.md`, `AGENT_*`
- Technical standards: `docs/architecture/architecture.md`, `docs/architecture/MOBILE_ARCHITECTURE.md`, `docs/architecture/CODING_STANDARDS.md`, `docs/architecture/DB_SPEC.md`
- Testing policy consistency: `tests/TESTING_POLICY.md`
- Module placeholders and ownership docs when structure changes
- Skill portfolio consistency: existing skills, overlaps, and new-skill eligibility

## Maintenance Rules

1. Keep canonical structure aligned with actual directories (`apps/`, `packages/`, `tests/`, `skills/`).
2. Keep testing language consistent:
- Flutter Integration Test for mobile Flutter flows
- Flutter Web Test for non-mobile surfaces
- affected-module-only execution
3. Keep persistence language consistent with DB decisions:
- SQLite + Sqflite
- UUIDv7 IDs
- filesystem binaries + DB metadata
4. Keep phase language consistent: foundation setup vs implementation phase.
5. Keep `context.md` short and chapter-based to minimize token load.
6. Do not leave contradictory instructions between docs.
7. Run a skill lifecycle audit before proposing a new skill:
- First evaluate whether an existing skill can be updated/extended.
- Create a totally new skill only when no existing skill can cover the behavior cleanly.
- Record the decision in the output as: `updated existing` or `created new`.

## Skill Lifecycle Audit

When skills are involved, check in this order:
1. Existing skill coverage in `skills/*/SKILL.md`
2. Overlap with current triggers/descriptions
3. Whether changes can be handled by:
- metadata/description update only
- workflow/checklist/reference update
- or true new skill creation

Prefer updating existing skills over creating new skills unless separation is clearly required.

## Output Contract

- List changed docs and why each was updated.
- State which consistency checks were applied.
- For skill changes, include lifecycle decision and rationale (`updated existing` vs `created new`).
- Call out any unresolved documentation ambiguity.



