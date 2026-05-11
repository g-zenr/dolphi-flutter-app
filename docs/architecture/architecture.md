# Dolphi Architecture

## 1. Architecture Goals
- Offline-first operation for all core learning flows.
- Local-only data handling by default.
- Modular design with clear separation of concerns.
- Extensible pipeline for ingestion, AI generation, quizzes, and review planning.

## 2. High-Level System
Dolphi is a local AI learning system composed of:
- Presentation Layer: UI screens and interaction flow.
- Application Layer: orchestrates use cases and business rules.
- Domain Layer: topic, document, summary, task, quiz, review logic.
- Infrastructure Layer: parsers, OCR, AI runtime, local storage, Export/backup.

## 3. Module Boundaries
- `ui`: Home, Topic Dashboard, Upload, Study, Quiz, Results, Memory/Progress screens.
- `ingestion`: file intake, validation, type routing, topic assignment.
- `parsing`: PDF/DOCX/PPT/text extraction and OCR normalization.
- `ai-generation`: summary generation, key terms, lesson segmentation, task creation, quiz generation.
- `memory-engine`: stores performance history, weak concepts, review intervals, streaks.
- `quiz-engine`: question rendering, answer evaluation, scoring, explanation payloads.
- `review-engine`: prioritization and next-study suggestions using weakness + recency signals.
- `storage`: local DB + file store + encryption + metadata index.
- `Export-backup`: explicit user-triggered backup/Export only.

Implementation packaging (canonical):
- `lib` for Flutter app shell and atomic UI composition.
- `lib/api` for application workflows.
- `lib/domain` for pure domain contracts/entities.
- `lib/storage`, `lib/parsing`, `lib/ai` for infrastructure.
- `lib/shared` for common types and utilities.

## 4. Core Data Flow
1. User selects topic and uploads files.
2. `ingestion` validates and routes files to `parsing`.
3. `parsing` outputs normalized content units.
4. `ai-generation` creates summary, tasks, and quiz candidates.
5. Artifacts are stored via `storage` and linked to topic.
6. User studies and completes quizzes through `quiz-engine`.
7. Results update `memory-engine`.
8. `review-engine` generates next review recommendations.

## 5. Persistence Model
Primary entities:
- Topic
- Document
- Summary
- Task
- Quiz
- QuizItem
- QuizResult
- ReviewPlan

Rules:
- Every entity is topic-linked.
- Quiz attempts are immutable historical records.
- Regenerated artifacts are versioned, not overwritten silently.

See `DB_SPEC.md` for locked storage decisions and migration policy.

## 6. Privacy And Security
- No automatic cloud upload of user data.
- Local encryption at rest for database and sensitive metadata.
- Export/backup is user-initiated and explicit.
- Processing and inference remain on-device for core features.

## 7. Runtime And Performance
- Background processing for heavy parsing/generation jobs.
- Progress states emitted to UI for every long-running operation.
- Model/runtime abstraction to support device-tier optimization.
- Caching of parsed content and reusable embeddings/features (if used locally).

## 8. Error Handling Strategy
- Per-document processing states: pending, processing, completed, failed.
- Retry support for failed parse/generation.
- Confidence flags for low-quality OCR or extraction.
- Non-blocking UX: allow partial topic outputs while remaining files process.

## 9. Testing Strategy
- Unit tests per module boundary.
- Integration tests for end-to-end topic flow.
- Flutter Integration Test is primary E2E for Flutter iOS app flows.
- Flutter Web Test is retained for non-mobile surfaces only.
- Run tests only for affected modules during implementation cycles.

## 10. Documentation Contract
When a module changes:
- Update module-specific `.md` documentation.
- Update BRD/PRD when requirement or scope changes.
- Record privacy/schema impacts in delivery notes.

## 11. Suggested Repository Structure
```text
/
  docs/
    architecture/
      architecture.md
      MOBILE_ARCHITECTURE.md
      CODING_STANDARDS.md
      DB_SPEC.md
      DESIGN_PRINCIPLES.md
    product/
      BRD.md
      PRD.md
    governance/
      SETUP_ROADMAP.md
      AGENT_POLICY.md
      AGENT_WORKFLOW.md
      AGENT_TEMPLATE.md
  skills/
  apps/
    mobile/
      app/
      src/
        ui/
          atoms/
          molecules/
          organisms/
          templates/
          screens/
        features/
  packages/
    api/
      topic/
      upload/
      study/
      quiz/
      review/
    domain/
    storage/
    parsing/
    ai/
    shared/
  src/  (legacy module placeholder docs only)
  tests/
    unit/
    integration/
    Flutter Web Test/
    Flutter Integration Test/
```

## 12. Future Extensions (Non-v1)
- Optional encrypted multi-device sync with explicit opt-in.
- Classroom/teacher management workflows.
- Content quality feedback loops for quiz calibration.

## 13. Foundation References
- `docs/governance/SETUP_ROADMAP.md` is the phase tracker.
- `docs/architecture/MOBILE_ARCHITECTURE.md` defines RN iOS-first layering and modular boundaries.
- `docs/architecture/CODING_STANDARDS.md` defines clean-code and module interaction standards.
- `docs/architecture/DB_SPEC.md` defines SQLite/Sqflite persistence contracts.
