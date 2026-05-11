# API Package Boundary

## 1. Purpose
Act as the application boundary between mobile UI and domain/infrastructure modules.

## 2. Owns
- Use-case orchestration for topic/upload/study/quiz/review flows
- App-facing DTO shaping for UI consumption
- Workflow composition across domain + infrastructure adapters

## 3. Does Not Own
- UI rendering
- Raw database query implementation
- Parser internals
- AI runtime internals

## 4. Subdomains
- `topic` (implemented MVP service)
- `upload`
- `study`
- `quiz`
- `review`

## 5. Allowed Dependencies
- `lib/domain`
- `lib/storage`
- `lib/parsing`
- `lib/ai`
- `lib/shared`

## 6. Interface Contract
- Input: commands from `lib`
- Output: deterministic DTOs and result envelopes for UI

## 7. Current Implemented Scope
- `TopicService` with create/list/rename/archive use cases.

## 8. Testing Direction
- Unit tests per use-case orchestration path
- Integration tests for cross-package flow boundaries

## 9. Maintenance Trigger
Update this file when a new business flow is added or orchestration boundaries change.
