# Domain Package

## 1. Purpose
Hold pure business entities, value objects, and contracts independent of framework/runtime concerns.

## 2. Owns
- Domain entity contracts
- Value object and rule definitions
- Repository/service interfaces consumed by API layer

## 3. Current Implemented Scope
- Topic entity model and status lifecycle
- Topic name validation and normalization
- Topic repository contract

## 4. Does Not Own
- UI-specific models
- DB schema/migration implementation
- Parsing or AI adapter logic

## 5. Allowed Dependencies
- `lib/shared` only (for safe primitive types/utilities)

## 6. Interface Contract
- Flutterses pure contracts for API orchestration and infrastructure implementation.

## 7. Testing Direction
- Unit tests for domain invariants, rules, and contract behavior

## 8. Maintenance Trigger
Update this file when entities, invariants, or interface contracts change.
