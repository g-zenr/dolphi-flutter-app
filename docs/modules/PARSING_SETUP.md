# Parsing Package Setup

## 1. Purpose
Provide file extraction and normalization adapters for study content ingestion.

## 2. Owns
- PDF/DOCX/PPT/text extraction pipeline
- OCR normalization adapters
- Structured extraction output contracts for downstream usage

## 3. Does Not Own
- UI and screen behavior
- Persistence decisions
- Quiz/scoring orchestration

## 4. Allowed Dependencies
- `lib/domain`
- `lib/shared`

## 5. Interface Contract
- Input: file references and parse options
- Output: normalized structured content units and parse status

## 6. Testing Direction
- Unit tests for extraction adapters
- Integration tests for parse pipeline success/failure cases

## 7. Maintenance Trigger
Update this file when supported formats, parser adapters, or normalization contracts change.
