# AI Package Setup

## 1. Purpose
Provide local AI generation adapters for summaries, tasks, and quizzes.

## 2. Owns
- Local AI runtime adapter boundary
- Generation pipelines for summary/task/quiz outputs
- Confidence/error envelope contracts for API layer

## 3. Does Not Own
- UI rendering
- Persistence implementation
- End-to-end orchestration across modules

## 4. Allowed Dependencies
- `lib/domain`
- `lib/shared`

## 5. Interface Contract
- Input: normalized content + generation options
- Output: structured generation artifacts with confidence metadata

## 6. Testing Direction
- Unit tests for prompt/adapter shaping
- Integration tests for generation pipelines and fallback behavior

## 7. Maintenance Trigger
Update this file when model adapters, generation contracts, or local AI constraints change.
