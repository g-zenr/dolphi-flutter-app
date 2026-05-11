# CONTEXT - Dolphi Codebase Book

## TL;DR (Load This First)
- Start here, then load only the minimum chapter docs for the current task.
- Canonical code layout: `lib` + `packages/*` (legacy `src/*` is reference-only).
- Core defaults: offline-first, local-only, SQLite + Sqflite, UUIDv7, filesystem binaries.
- Testing defaults: Flutter Integration Test for mobile E2E, Flutter Web Test for non-mobile, affected-modules-only runs.

## Why This File Exists
This is the token-saving entrypoint for the repository.
Read this first, then open only the chapter docs needed for the current task.

## Book Map (Chapter Index)
1. Project Intent
- `docs/product/BRD.md`
- `docs/product/PRD.md`

2. Delivery And Governance
- `docs/governance/SETUP_ROADMAP.md`
- `docs/governance/AGENT_POLICY.md`
- `docs/governance/AGENT_WORKFLOW.md`
- `docs/governance/AGENT_TEMPLATE.md`

3. Architecture
- `docs/architecture/architecture.md`
- `docs/architecture/MOBILE_ARCHITECTURE.md`
- `docs/architecture/CODING_STANDARDS.md`
- `docs/architecture/DB_SPEC.md`
- `docs/architecture/DESIGN_PRINCIPLES.md`

4. Runtime Structure
- App shell: `lib`
- Core packages: `lib/api`, `lib/domain`, `lib/storage`, `lib/parsing`, `lib/ai`, `lib/shared`
- Legacy placeholders: `src/*` (reference only)

5. Testing Policy
- `tests/TESTING_POLICY.md`
- `tests/Flutter Integration Test` for mobile E2E
- `tests/Flutter Web Test` for non-mobile E2E
- `tests/unit` and `tests/integration` for module-level validation

6. Agent Skills
- `skills/dolphi-agent-executor/SKILL.md`
- `skills/codex-prompt-generator/SKILL.md`
- `skills/dolphi-doc-maintainer/SKILL.md`

7. Package Setup Docs
- `docs/modules/MOBILE_APP_SETUP.md`
- `docs/modules/API_BOUNDARY.md`
- `docs/modules/DOMAIN_MODEL.md`
- `docs/modules/STORAGE_SETUP.md`
- `docs/modules/PARSING_SETUP.md`
- `docs/modules/AI_SETUP.md`
- `docs/modules/SHARED_SETUP.md`

## Fast Routing Matrix
- Feature behavior change: `docs/product/PRD.md` -> `docs/governance/AGENT_WORKFLOW.md` -> module docs
- Architecture decision: `docs/architecture/architecture.md` -> `docs/architecture/MOBILE_ARCHITECTURE.md` -> `docs/architecture/CODING_STANDARDS.md`
- UI design decision: `docs/architecture/DESIGN_PRINCIPLES.md` -> `docs/modules/MOBILE_APP_SETUP.md`
- Storage/schema decision: `docs/architecture/DB_SPEC.md` -> `docs/governance/AGENT_POLICY.md`
- Package boundary change: package setup docs (`docs/modules/*`) -> `docs/governance/AGENT_WORKFLOW.md`
- Process/rules check: `docs/governance/AGENT_POLICY.md` -> `docs/governance/AGENT_WORKFLOW.md` -> `docs/governance/AGENT_TEMPLATE.md`
- Doc sync/cleanup: `skills/dolphi-doc-maintainer/SKILL.md` -> checklist reference

## Quick Start By Task (Minimal Reads)
- Product scope or behavior change:
  - `context.md` -> `docs/product/PRD.md` -> `docs/product/BRD.md` -> `docs/governance/AGENT_WORKFLOW.md`

- Architecture or module design:
  - `context.md` -> `docs/architecture/architecture.md` -> `docs/architecture/MOBILE_ARCHITECTURE.md` -> `docs/architecture/CODING_STANDARDS.md`

- Data/storage decisions:
  - `context.md` -> `docs/architecture/DB_SPEC.md` -> `docs/architecture/architecture.md` -> `docs/governance/AGENT_POLICY.md`

- Process/compliance checks:
  - `context.md` -> `docs/governance/AGENT_POLICY.md` -> `docs/governance/AGENT_WORKFLOW.md` -> `docs/governance/AGENT_TEMPLATE.md`

- Test planning:
  - `context.md` -> `tests/TESTING_POLICY.md` -> `docs/governance/AGENT_WORKFLOW.md`

## Separation Of Concern Rules (Canonical)
- `lib`: UI composition and navigation only.
- `lib/api`: use-case orchestration and app-facing DTOs.
- `lib/domain`: pure entities/contracts, framework-agnostic.
- `lib/storage`: SQLite + Sqflite repositories and migrations.
- `lib/parsing`: extraction and normalization adapters.
- `lib/ai`: local AI generation adapters.
- `lib/shared`: cross-cutting types/constants/utils only.

## Non-Negotiable Defaults
- Offline-first and local-only by default.
- No automatic cloud upload.
- SQLite + Sqflite, UUIDv7 IDs, filesystem binary storage.
- Flutter Integration Test for mobile E2E, Flutter Web Test for non-mobile surfaces.
- Run tests only for affected modules.

## Current Repo Phase
- Foundation setup only.
- No app feature implementation should be assumed from docs/skeleton.

## Maintenance Rule
Update this file whenever chapter order, canonical structure, or policy defaults change.

## Token Budget Rule
- For normal tasks, target loading `context.md` plus 2 to 4 docs maximum.
- Only load BRD/PRD together when scope or requirements decisions are involved.


