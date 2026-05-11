# Storage Package Setup

## 1. Purpose
Implement local persistence adapters and repository boundaries.

## 2. Owns
- Repository implementations
- Persistence adapters used by API layer
- Data serialization/deserialization responsibilities

## 3. Does Not Own
- UI concerns
- Use-case orchestration
- Parsing/AI business generation logic

## 4. Locked Decisions
- SQLite + Sqflite (target production direction)
- UUIDv7 identifiers
- Filesystem binaries + DB metadata
- Forward-only migrations with rollback scripts

## 5. Current MVP Implementation
- `JsonTopicRepository` backed by key-value storage adapter.
- Adapter is wired in mobile app through AsyncStorage.

## 6. Allowed Dependencies
- `lib/domain`
- `lib/shared`

## 7. Interface Contract
- Input: domain-level repository contract calls
- Output: persisted/retrieved domain records and metadata

## 8. Testing Direction
- Unit tests for repositories and mappers
- Integration tests for migrations and query behavior

## 9. Maintenance Trigger
Update this file when schema, migration policy, or persistence boundaries change.
