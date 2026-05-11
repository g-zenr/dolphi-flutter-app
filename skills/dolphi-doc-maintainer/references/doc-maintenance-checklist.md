# Doc Maintenance Checklist

Use this checklist whenever docs are updated.

## 1. Structure Consistency
- `context.md` chapter map matches current repo folders.
- `agent.md` read order includes current canonical docs.
- `docs/architecture/architecture.md` repository tree matches actual structure.

## 2. Policy Consistency
- `docs/governance/AGENT_POLICY.md`, `docs/governance/AGENT_WORKFLOW.md`, and `docs/governance/AGENT_TEMPLATE.md` do not conflict.
- Setup phase wording is consistent with `docs/governance/SETUP_ROADMAP.md`.
- Skill location policy remains repo-local (`./skills`).

## 3. Technical Consistency
- `docs/architecture/MOBILE_ARCHITECTURE.md` aligns with `docs/architecture/architecture.md`.
- `docs/architecture/DB_SPEC.md` aligns with architecture and workflow constraints.
- `docs/architecture/CODING_STANDARDS.md` aligns with workflow/testing requirements.
- `docs/architecture/DESIGN_PRINCIPLES.md` aligns with mobile architecture and UI module setup docs.

## 4. Testing Consistency
- Flutter Integration Test is defined as mobile E2E.
- Flutter Web Test is scoped to non-mobile surfaces.
- affected-module-only test execution is stated consistently.

## 5. Completeness
- New folders/modules have placeholder docs.
- New foundational docs are linked from `context.md` and `agent.md`.
- Outdated references are removed or marked as legacy.

## 6. Token Efficiency Gate
- `context.md` remains concise and chapter-driven.
- `context.md` includes a direct `TL;DR` and routing matrix.
- No large duplication across architecture/standards/workflow docs.
- If a long section is repeated across files, convert one copy into a reference link.

## 7. Maintenance Cadence
- Run this checklist after any structural, policy, workflow, testing, or standards update.
- Log which docs were checked and which were changed in the delivery summary.

## 8. Skill Lifecycle Audit
- Review existing skills under `skills/*` before proposing a new one.
- Confirm whether behavior can be covered by updating an existing skill.
- Create a new skill only if capability boundaries are genuinely different.
- Update `context.md` and `agent.md` skill listings when skill portfolio changes.
- Record final decision: `updated existing skill` or `created new skill` with a one-line reason.


