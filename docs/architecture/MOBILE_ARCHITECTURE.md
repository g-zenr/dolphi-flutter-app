# MOBILE ARCHITECTURE - Dolphi (iOS-First, Flutter)

## Objective
Define the implementation architecture for Flutter iOS-first development without starting feature code.

## Platform Direction
- Framework: Flutter via native Flutter project.
- Primary target: iOS first.
- Build path: Standard Flutter iOS build when implementation begins.

## Layering Model
- Presentation: screens and atomic UI components.
- Application: use-case orchestration and workflow coordination.
- Domain: topic, document, summary, task, quiz, memory/review logic.
- Infrastructure: parsing, local AI runtime adapters, storage, Export/backup.

## Atomic + Modular Rule
- UI follows atomic structure: atoms, molecules, organisms, templates, screens.
- Feature behavior follows module boundaries in `lib` and `packages/`.
- Dependency direction is inward: app/ui -> api -> domain -> infrastructure.
- No reverse imports from infrastructure into UI.

## Module Boundaries
- `lib` for screens/navigation/composition only.
- `lib/api` for use-case orchestration (`topic`, `upload`, `study`, `quiz`, `review`).
- `lib/domain` for entities/contracts.
- `lib/storage` for SQLite/Sqflite repositories and migrations.
- `lib/parsing` for file extraction/OCR adapters.
- `lib/ai` for local AI generation adapters.
- `lib/shared` for shared types/utils/constants.

## Legacy Placeholder Note
- Existing `src/*` module docs are retained as transition placeholders.
- New implementation work should target `lib` and `packages/*` as canonical structure.

## State + Data Direction
- Local/global state: Riverpod.
- Async/query state: Riverpod.
- Core persisted data: SQLite via Sqflite.

## Mobile Testing Direction
- Flutter Integration Test is primary E2E for mobile iOS app flows.
- Flutter Web Test remains for non-mobile surfaces only.
- Only affected module tests should run per change.

## Documentation Rule
When a module changes, update that module's `.md` placeholder to a concrete design/contract doc.
