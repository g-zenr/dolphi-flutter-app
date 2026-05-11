# Testing Policy Note

## Framework Direction
- Flutter Integration Test: primary E2E for Flutter iOS mobile flows.
- Flutter Web Test: retained for non-mobile surfaces (docs/tooling/web/admin surfaces if introduced).

## Execution Rule
- Run tests only for affected modules.
- Do not run unaffected module test suites.

## Current Status
- MVP implementation is active.
- Current automated coverage includes API-level unit tests for topic orchestration.
- Workspace-wide `typecheck` is required before merge.
