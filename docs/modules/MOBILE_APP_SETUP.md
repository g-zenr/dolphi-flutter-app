# Mobile App Setup

## 1. Purpose
Define and implement the Flutter iOS-first app shell and mobile-first user flows.

## 2. Owns
- Navigation shell and screen composition
- Atomic UI layers (`atoms`, `molecules`, `organisms`, `templates`, `screens`)
- Feature-level presentation hooks in `src/features`

## 3. Does Not Own
- Persistence logic
- Parsing logic
- AI generation logic
- Domain entity/rule definitions

## 4. Allowed Dependencies
- `lib/api`
- `lib/shared`

## 5. Interface Contract
- Input: app-facing DTOs and commands from `lib/api`
- Output: user interactions translated into API-level commands

## 6. Current Implemented Flow
- Home screen with topic create/list/archive actions
- Offline-first local persistence using API + storage adapters
- Riverpod-based UI state and QueryClient provider bootstrap

## 7. Testing Direction
- UI and flow tests through Flutter Integration Test (mobile)
- No direct infrastructure tests in this package

## 8. Maintenance Trigger
Update this file when navigation boundaries, UI layering, or API interaction patterns change.
