# SETUP ROADMAP - Dolphi Implementation Roadmap

## Purpose
This roadmap is the single source of truth for foundation setup, implementation, and delivery readiness.

## Locked Defaults
- Phase type: Active implementation.
- Stack direction: Flutter (Flutter), iOS-first.
- State direction: Riverpod + Riverpod.
- Persistence direction: SQLite + Sqflite, UUIDv7 IDs.
- Binary storage direction: Filesystem + DB metadata only.

## Phase 0 - Governance Lock
### Goals
- Finalize and align architecture, coding, DB, and workflow docs.
- Eliminate policy conflicts across BRD/PRD and agent docs.

### Outputs
- `architecture.md` aligned with mobile/testing policy.
- `MOBILE_ARCHITECTURE.md` created.
- `CODING_STANDARDS.md` created.
- `DB_SPEC.md` created.
- `AGENT_WORKFLOW.md` and `AGENT_TEMPLATE.md` aligned.

### Acceptance Gate
- All policy/test/doc rules are internally consistent.
- Drift handling format is defined and enforced with `Alpha Baseline` and `Delta Changes`.

## Phase 1 - Repository Skeleton
### Goals
- Define structure only (folders + module placeholders).

### Outputs
- `lib` app shell directories and atomic UI folders.
- `lib/api`, `lib/domain`, `lib/storage`, `lib/parsing`, `lib/ai`, `lib/shared`.
- `src/` module directories retained as legacy architecture placeholders.
- `tests/unit`, `tests/integration`, `tests/Flutter Web Test`, `tests/Flutter Integration Test`.
- Module-level placeholder docs for each architecture module.

### Acceptance Gate
- Folder map matches architecture boundaries exactly.
- Every module has a placeholder ownership doc.

## Phase 2 - Tooling Plan (Spec Only)
### Goals
- Define intended scripts/checks without implementing runtime.

### Planned Script Spec
- `lint`: static lint checks.
- `typecheck`: Dart project check.
- `test:unit`: unit tests for affected modules.
- `test:integration`: integration tests for affected modules.
- `test:e2e:Flutter Integration Test`: mobile E2E for RN iOS flows.
- `test:e2e:Flutter Web Test`: non-mobile E2E surfaces.
- `verify:foundation`: documentation consistency verification.

### CI Behavior Spec
- Trigger only affected module checks when possible.
- Enforce docs update requirement when module boundaries are touched.
- Require privacy/schema impact notes for storage/memory changes.

### Acceptance Gate
- Scripts and CI checks are fully specified with clear ownership.

## Phase 3 - Implementation Readiness Gate
### Goals
- Confirm all major architecture decisions are closed.

### Start Build Checklist
- [x] Governance docs aligned and approved.
- [x] Mobile architecture and coding standards approved.
- [x] DB spec approved (schema, IDs, migration policy, storage policy).
- [x] Repo skeleton complete with module placeholders.
- [x] Testing policy approved (Flutter Integration Test mobile, Flutter Web Test non-mobile, affected-modules only).
- [x] No unresolved high-impact technical decision remains.

### Acceptance Gate
- Start build checklist passes 100%.

## Phase 4 - MVP Implementation (In Progress)
### Goals
- Deliver first runnable vertical slice for topic management.
- Validate package boundaries with real app-to-api-to-storage wiring.

### Outputs
- Runnable Flutter mobile app in `lib`.
- Topic create/list/archive flow with local persistence adapter.
- Domain, API, and storage packages implemented for first use case.
- Initial unit tests for topic orchestration.

### Acceptance Gate
- App boots and renders topic flow.
- Workspace typecheck passes.
- Topic service unit tests pass.

## Dependency Order
1. Governance lock
2. Architecture + coding + DB docs
3. Repo skeleton + placeholders
4. Tooling/CI specification
5. Readiness gate
6. MVP implementation slices

## Risk Checklist
### Privacy
- [x] No automatic cloud upload behavior introduced.
- [x] Export/backup remains explicit user action.

### Schema
- [x] Forward-only migration policy preserved.
- [x] Rollback scripts required for schema changes.
- [x] Topic-linked entity rules preserved.

### Testing
- [x] Affected-module-only execution rule enforced.
- [x] Flutter Integration Test policy for mobile E2E documented.
- [x] Flutter Web Test scope limited to non-mobile surfaces.
