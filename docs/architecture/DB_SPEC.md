# DB SPEC - Dolphi Local Persistence

## Decisions (Locked)
- Database: SQLite.
- ORM/Query layer: Sqflite.
- ID strategy: UUIDv7 for primary entities.
- Binary documents: filesystem storage only.
- DB stores metadata and structured artifacts only.
- Migration strategy: forward-only with rollback scripts.

## Core Entities
- Topic
- Document
- Summary
- Task
- Quiz
- QuizItem
- QuizResult
- ReviewPlan

## Storage Policy
- Core study data is local only.
- Document binaries are not stored as SQLite blobs in v1.
- DB metadata includes file path/hash/mime/size/status.

## Data Integrity Rules
- Every entity is topic-linked directly or via parent relation.
- Quiz results are immutable history records.
- Regenerated summaries/quizzes create new versions.

## Migration Policy
- Use forward-only migrations.
- Every schema migration requires a rollback script.
- No destructive reset policy in production-like flows.

## Index/Performance Direction
- Index topic and status/time query paths for documents, summaries, quizzes, and results.
- Keep DB optimized for local offline reads first.

## Security Direction
- Respect local encryption-at-rest policy.
- No automatic cloud sync/upload behavior.
