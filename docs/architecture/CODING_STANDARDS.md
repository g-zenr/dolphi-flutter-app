# CODING STANDARDS - Dolphi

## Purpose
Set consistent engineering standards for future implementation.
These standards are complemented by `KARPATHY_CODING_GUIDELINES.md` and both must be followed.

## Core Principles
- Single Responsibility: each module/file has one clear job.
- Open/Closed: extend behavior through composition, avoid risky rewrites.
- Liskov + Interface Discipline: contracts must be substitutable and stable.
- Dependency Inversion: depend on interfaces/contracts, not concrete infrastructure.
- DRY: centralize reusable logic, avoid copy/paste across modules.
- KISS: choose the simplest design that meets current needs.
- YAGNI: do not implement speculative features in v1.

## Karpathy-Style Requirements
- Prefer simple, direct implementations over abstraction-heavy designs.
- Keep functions small, explicit, and easy to read.
- Keep control flow linear; use early returns to reduce nesting.
- Avoid deep layering unless it provides clear measurable value.
- Refactor toward clarity when a simpler equivalent exists.

## Modularity Rules
- Keep business logic out of UI components.
- Keep storage logic out of presentation modules.
- Use explicit interfaces for cross-module behavior.
- Do not bypass module boundaries with deep imports.

## Naming Rules
- Use clear, intent-driven names.
- Prefer verb-based function names for actions.
- Use consistent suffixes for repositories/services/adapters.

## Error Handling Rules
- Return explicit typed errors for expected failure modes.
- Add user-safe messages at UI boundaries.
- Keep raw infrastructure errors out of presentation layer.

## Documentation Rules
- Update module docs on every affected module change.
- Record privacy/schema impact in delivery notes.
- Keep BRD/PRD/architecture aligned when behavior shifts.

## Testing Rules
- Unit and integration tests by affected module.
- Flutter Integration Test for mobile E2E scenarios.
- Flutter Web Test only for non-mobile surfaces.
- Skip unaffected module tests and explicitly report skips.
