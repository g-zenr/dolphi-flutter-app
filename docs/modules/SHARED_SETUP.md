# Shared Package Setup

## 1. Purpose
Centralize cross-cutting primitives used by multiple packages.

## 2. Owns
- Shared types and enums
- Common constants
- Generic utilities and error envelopes

## 3. Does Not Own
- Business orchestration logic
- Module-specific workflow logic
- Persistence/parser/AI implementation

## 4. Allowed Dependencies
- No package-specific dependencies unless strictly necessary.

## 5. Interface Contract
- Provide stable and minimal reusable primitives.

## 6. Testing Direction
- Unit tests for utilities and shared type behavior

## 7. Maintenance Trigger
Update this file when shared contracts change or when duplication is consolidated into shared primitives.
