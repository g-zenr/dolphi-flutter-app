# KARPATHY CODING GUIDELINES - Dolphi

## Purpose

Adopt a simple, readable, direct coding style across Dolphi.
Prefer clarity and working software over abstraction-heavy design.

## Core Style

1. Make code obvious on first read.
2. Prefer small files and small functions.
3. Keep control flow linear and explicit.
4. Avoid unnecessary class hierarchies and indirection.
5. Use the fewest concepts needed to solve the problem.

## Simplicity Rules

1. Write straightforward code before writing reusable abstractions.
2. Add abstractions only after duplication is proven and meaningful.
3. Use plain objects/functions over framework-heavy patterns when possible.
4. Avoid speculative architecture and premature optimization.
5. Prefer composition of simple units over deep inheritance trees.

## Readability Rules

1. Use descriptive names; avoid cryptic abbreviations.
2. Keep functions single-purpose with clear inputs/outputs.
3. Favor early returns to reduce nested conditionals.
4. Keep function arguments minimal and explicit.
5. Keep module boundaries obvious and stable.

## Data And State Rules

1. Keep data shapes explicit and validated at boundaries.
2. Minimize hidden mutable state.
3. Pass data explicitly instead of relying on globals.
4. Keep transformations deterministic where possible.
5. For persisted data, preserve backward compatibility and add migration notes.

## Error Handling Rules

1. Fail loudly at boundaries and recover safely at user-facing layers.
2. Return actionable error context without leaking sensitive internals.
3. Avoid silent fallbacks that hide failures.
4. Keep error paths as readable as success paths.

## Testing Rules

1. Test behavior, not implementation details.
2. Prefer a few high-value tests over many brittle tests.
3. Add regression tests for every user-facing bug fix.
4. Keep tests easy to read and map directly to requirements.

## Refactor Heuristics

Refactor when one or more are true:
- Function exceeds clear single-purpose scope.
- Repeated logic appears in multiple affected modules.
- Naming or control flow causes repeated confusion.
- A simpler equivalent implementation exists.

## Anti-Patterns To Avoid

- Deep service/repository layering without clear value.
- Over-generic utility modules that hide domain intent.
- Premature dependency injection for local-only logic.
- Large "manager" classes with mixed responsibilities.
- Excessive configuration for simple behavior.

## Dolphi Application Notes

1. Keep offline-first and privacy-first behavior intact.
2. Keep topic traceability intact across ingestion -> study -> quiz -> review.
3. Prefer local deterministic processing paths.
4. Keep UI code focused on rendering and interaction, not business logic.
