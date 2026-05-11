# Business Requirements Document (BRD) - Dolphi

## 1. Document Control
- Product: Dolphi
- Version: 1.1
- Date: 2026-04-27
- Owner: Product and Business Team
- Status: Foundation Approved Draft

## 2. Executive Summary
Dolphi is a privacy-first, offline-first study platform that converts user-owned learning materials into structured study plans, quizzes, and adaptive review recommendations using on-device AI.

The business goal is to improve learning outcomes and consistency while preserving user trust through local-only storage and zero automatic cloud upload.

## 3. Business Problem
Current learner workflows are fragmented across PDF readers, notes apps, flashcard tools, and manual trackers. This causes:
- low study consistency,
- weak retention feedback loops,
- poor visibility into weak topics,
- privacy concerns when cloud AI tools are required.

## 4. Business Objectives And KPIs
### Objective A: Increase learner consistency
- KPI A1: 30-day retention >= 35% within six months of launch.
- KPI A2: Average weekly study sessions per active user >= 3.

### Objective B: Improve study efficiency
- KPI B1: >= 60% of active users complete at least one generated task flow per week.
- KPI B2: >= 50% of active users complete at least one topic quiz per week.

### Objective C: Preserve user trust via privacy
- KPI C1: 100% of core workflows available offline.
- KPI C2: 0 automatic cloud uploads in default configuration.

## 5. Stakeholders
- Executive Sponsor: Product Lead
- Business Owner: Learning Experience Manager
- Product Owner: PM for Dolphi
- Engineering Owner: Mobile Engineering Lead
- AI Owner: On-device AI Lead
- Privacy Owner: Data Privacy Officer
- QA Owner: Test Lead

## 6. Current State
- Learners manually organize and revisit mixed study materials.
- Topic progress and weak-area tracking are often manual.
- Many AI study solutions require internet and external processing.

## 7. Future State
- Users group files by topic and run local analysis.
- Dolphi produces summaries, tasks, quizzes, and review recommendations.
- Topic memory improves future review quality over time.
- Core workflows run without internet dependency.

## 8. Scope
### In Scope (v1)
- Topic and document organization
- Local parsing and extraction
- Local summary/task/quiz generation
- Topic memory and review recommendation engine
- Progress and weak-area visibility
- Manual Export/backup capability

### Out Of Scope (v1)
- Default cloud sync
- Multi-user classroom administration
- Social collaboration layer
- Full LMS integrations

## 9. Business Requirements
- BR-001: Users can create/manage topics and assign documents.
- BR-002: Supported files are processed locally into study artifacts.
- BR-003: Topic quizzes are generated and results are stored locally.
- BR-004: Progress, weak areas, and study trends are visible per topic.
- BR-005: Next review suggestions are generated from performance history.
- BR-006: Core flows work fully offline.
- BR-007: No automatic cloud upload of user content.
- BR-008: Export/backup is user-initiated and explicit.

## 10. Constraints
- Device performance variance for on-device AI.
- Parsing/OCR quality variance by file quality.
- Local storage pressure on lower-capacity devices.
- Strict privacy constraints limiting cloud-based shortcuts.

## 11. Dependencies
- On-device AI runtime and model package strategy
- Local parser/OCR libraries
- SQLite + filesystem storage stack
- Mobile shell and UI framework conventions

## 12. Risks And Mitigations
### Risk 1: Low-end performance bottlenecks
- Impact: Slow generation, lower engagement
- Mitigation: Background jobs, progressive status, model tiering

### Risk 2: OCR quality on handwritten notes
- Impact: Weak generated output quality
- Mitigation: confidence scoring, correction/retry flow

### Risk 3: Local storage growth
- Impact: user storage pressure and churn risk
- Mitigation: storage dashboard, cleanup/archive guidance

### Risk 4: Inconsistent quiz quality
- Impact: lower trust in recommendations
- Mitigation: calibration logic and difficulty feedback loops

## 13. Milestones
- M1 Requirements Freeze: 2026-05-15
- M2 Architecture and Prototype: 2026-06-30
- M3 Alpha: 2026-08-15
- M4 Beta: 2026-09-30
- M5 v1 Readiness: 2026-11-15

## 14. Assumptions
- v1 starts as single-user local profile per device.
- Initial platform emphasis is iOS-first mobile.
- Export/backup remains manual in v1.
- Local AI constraints are handled within target hardware baseline.

## 15. Success Criteria
- End-to-end flow completion: topic -> upload -> study -> quiz -> review.
- Repeat topic usage and weak-topic recovery trends improve.
- No privacy regressions against local-only default policy.

## 16. Open Questions
- Minimum supported hardware baseline for acceptable local inference?
- Initial language support beyond English?
- Should Export files be encrypted by default in v1?

## 17. Traceability To PRD
- BR-001, BR-002 -> FR-001 to FR-004
- BR-003, BR-004 -> FR-006 to FR-008
- BR-005 -> FR-009
- BR-006, BR-007, BR-008 -> FR-010 and FR-011 + privacy NFRs
