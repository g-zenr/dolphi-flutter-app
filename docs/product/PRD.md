# Product Requirements Document (PRD) - Dolphi

## 1. Document Control
- Product: Dolphi
- Version: 1.1
- Date: 2026-04-27
- Product Owner: PM
- Engineering Owner: Mobile Engineering Lead
- Status: Foundation Approved Draft

## 2. Product Summary
Dolphi is an offline-first study app that transforms local user documents into summaries, guided tasks, quizzes, and adaptive review recommendations through on-device AI.

## 3. Goals And Non-Goals
### Goals
- Fast multi-format material intake
- High-quality local summaries, tasks, and quizzes
- Topic-level adaptive review and progress insight
- Privacy-preserving local-only default workflows

### Non-Goals (v1)
- Cloud-first collaboration
- Institutional classroom administration
- Public content marketplace

## 4. Primary Personas
- Student preparing for exams
- Self-learner mastering a focused domain
- Teacher preparing module-based review materials

## 5. User Journeys
### Journey A: First Topic Setup
1. Open app
2. Create topic
3. Upload files
4. Wait for local processing
5. Review summary

### Journey B: Study Loop
1. Start generated tasks
2. Complete quiz
3. Review results and weak concepts
4. Receive next review recommendation

## 6. Feature Scope
### In Scope
- Topic management
- Multi-document upload/parsing
- Local AI summary and task generation
- Mixed-format quiz generation
- Topic memory updates
- Smart review recommendations
- Manual Export/backup

### Out Of Scope
- Auto cloud sync
- Team workspace collaboration
- Proctored exam mode

## 7. Functional Requirements
- FR-001 Topic Management: create, rename, archive, select topics.
- FR-002 Upload Management: add PDF, DOCX, PPT/PPTX, image, text and attach to topic.
- FR-003 Local Processing: parse/index content on-device.
- FR-004 Summary Generation: produce concise + expanded summaries.
- FR-005 Task Generation: produce reading tasks, concept drills, reflection prompts.
- FR-006 Quiz Generation: produce mixed-format quizzes by topic.
- FR-007 Result Evaluation: score results and detect weak concepts.
- FR-008 Topic Memory: persist artifacts, history, and weakness map.
- FR-009 Smart Review: prioritize next study actions using weak areas and recency.
- FR-010 Offline Guarantee: core flow functional with no internet.
- FR-011 Export/Backup: user-initiated Export and backup only.

## 8. Non-Functional Requirements
- NFR-001 Performance: process a typical 20-page PDF + initial summary within target threshold.
- NFR-002 Reliability: high crash-free session target in beta.
- NFR-003 Privacy: zero automatic cloud transfer by default.
- NFR-004 Security: local data encryption at rest.
- NFR-005 Usability: first upload-to-quiz journey should be short and clear.
- NFR-006 Accessibility: support text scaling and readable contrast standards.

## 9. UX Surface Requirements
- Home: recent topics, progress snapshot, suggested review
- Topic Dashboard: docs, summary, progress, weak concepts
- Upload: file select, topic binding, pre-process state
- Study: generated tasks and lesson flow
- Quiz: mixed question flow and optional timing
- Results: score, mistakes, suggested next review
- Memory/Progress: trends, streaks, strengths/weaknesses

## 10. Data Contracts (High-Level)
- Topic: id, name, status, timestamps
- Document: id, topic_id, file metadata, parse_status
- Summary: id, topic_id, version, summary fields
- Task: id, topic_id, type, status, prompt
- Quiz: id, topic_id, difficulty, source_version
- QuizItem: id, quiz_id, type, prompt, options, answer_key
- QuizResult: id, quiz_id, topic_id, score, weak_concepts
- ReviewPlan: id, topic_id, priority, next_review_at, reason

(See `docs/architecture/DB_SPEC.md` for locked storage decisions.)

## 11. Acceptance Criteria
- AC-001 Upload Assignment: files appear under selected topic with processing status.
- AC-002 Local Summary: summary + key concepts saved locally after processing.
- AC-003 Task And Quiz Output: at least one task flow + one mixed-format quiz per processed topic.
- AC-004 Memory Update: quiz completion updates weak concepts and review cadence.
- AC-005 Review Ranking: recommendations reflect weakness + recency logic.
- AC-006 Offline Operation: core flow works with no internet.

## 12. Metrics
- Funnel: topic_created -> file_uploaded -> summary_viewed -> task_started -> quiz_completed -> review_completed
- Engagement: sessions/topic/week and quiz completion frequency
- Learning: score delta and weak-topic recovery trend
- Privacy: outbound sync count (target 0 default)

## 13. Dependencies
- Local AI runtime
- Parsing and OCR adapters
- SQLite + filesystem persistence
- UI shell and navigation framework

## 14. Risks And Mitigations
- Inference lag on low-end hardware -> model/runtime tiering and background jobs
- OCR confidence drop -> confidence labels and correction loop
- Quality variance in generated quizzes -> calibration and feedback loop

## 15. Release Plan
- Alpha: topic, upload, summary, baseline quiz loop
- Beta: memory/review engine and progress views
- v1: performance hardening, accessibility pass, Export/backup polish

## 16. Assumptions
- Single-user local profile in v1
- iOS-first build priority
- English-first launch baseline

## 17. Open Questions
- Final latency targets by hardware tier?
- Encrypted Export format default?
- Additional language support in launch window?

## 18. BRD Mapping
- Business objectives and requirements are sourced from `docs/product/BRD.md` and mapped in sections 7, 8, and 11.
