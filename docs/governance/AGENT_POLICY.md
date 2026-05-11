# AGENT POLICY - DOLPHI PROJECT

## 1. Mission
Build Dolphi as an offline-first, privacy-first AI learning app that turns user-uploaded files into summaries, study tasks, quizzes, and adaptive review plans.

## 2. Non-Negotiable Product Principles
- Keep all core functionality fully offline.
- Store user data locally by default.
- Never auto-upload user content to cloud services.
- Make topic-based organization the primary information model.
- Prioritize learning effectiveness over feature count.

## 3. Scope Guardrails
- In scope: local document ingestion, AI analysis, task generation, quiz generation, memory/progress tracking, smart review.
- Out of scope for v1: mandatory cloud sync, collaborative classrooms, social features, LMS-grade integrations.
- Do not add features that violate offline-first behavior.

## 4. Privacy And Security Rules
- Treat every uploaded file as sensitive.
- Do not transmit raw user files or extracted text externally without explicit user action.
- Encrypt local data at rest where supported.
- Require explicit consent for Export/backup operations.
- Minimize stored personal metadata.

## 5. AI Processing Rules
- Run inference on-device for all core learning outputs.
- Use deterministic prompts/templates for summaries, tasks, and quizzes when possible.
- Surface low-confidence extraction/OCR results and allow reprocessing.
- Maintain topic-level memory to improve future quizzes and review suggestions.
- Do not fabricate citations or source facts outside uploaded content.

## 6. Data Model Rules
- Every artifact must be linked to a topic.
- Preserve traceability from document -> summary -> task/quiz -> result -> review plan.
- Version generated artifacts when regenerated.
- Keep immutable history for quiz attempts and score trends.

## 7. UX Rules
- Keep the flow simple: Topic -> Upload -> Process -> Study -> Quiz -> Review.
- Show processing state clearly for each document.
- Explain why a review is recommended (weakness, recency, low score).
- Support accessible text scaling and readable contrast.
- When data is partial or ambiguous, block execution and request clarification. Do not proceed with assumptions.

## 8. Engineering Rules
- Use modular boundaries: ingestion, parsing, AI generation, memory engine, quiz engine, UI.
- Prefer small, testable units over large coupled modules.
- Follow `docs/architecture/KARPATHY_CODING_GUIDELINES.md` for simplicity, readability, and minimal abstraction.
- Design with graceful degradation for low-end devices.
- Keep runtime and storage budgets visible in implementation decisions.
- Maintain strict backward compatibility for persisted local data schemas.

## 9. Quality Rules
- Add tests for every behavior change that affects user learning flow.
- Required checks before merge: lint, typecheck/build, unit tests, and critical integration path tests.
- Include regression tests for bugs affecting quiz scoring, topic memory, and recommendation logic.
- Validate offline behavior during QA (no network dependency in core flow).

## 10. Performance Rules
- Optimize first-run processing latency for common document sizes.
- Use background processing with progress indicators for heavy tasks.
- Avoid UI freezes during parsing or generation.
- Profile and improve hotspots before release milestones.

## 11. Documentation Rules
- Keep BRD.md and PRD.md as source-of-truth product documents.
- Update docs when scope, requirements, or acceptance criteria change.
- Record unresolved questions explicitly and resolve them before implementation. Do not document or execute assumption-based decisions.
- Document any privacy-impacting or storage-impacting change in PR notes.

## 12. Delivery Rules
- Ship in phases: alpha -> beta -> v1.
- Do not mark a feature complete without acceptance criteria mapping.
- Each delivered feature must include: implementation summary, tests, risks, and follow-up items.
- Prioritize reliability and correctness over adding new feature surface.

## 13. Definition Of Done
A feature is done only when:
- It satisfies mapped PRD functional/non-functional requirements.
- It works offline in the full user path.
- Tests pass and regression coverage is updated.
- Privacy constraints are preserved.
- User-visible behavior and limits are documented.

## 14. Change Control
- Any proposal that weakens local-first privacy must be flagged as a product decision, not an engineering default.
- Any schema or memory logic change requires migration and rollback considerations.
- Any scope expansion beyond BRD/PRD must be documented before implementation.
