# AGENT WORKFLOW - DOLPHI PROJECT

## Per-Prompt Workflow (Must Follow For Every Request)
Use this exact flow for each prompt before implementation starts.

1. Prompt Generator Gate (Recommended)
- Use `$codex-prompt-generator` for ambiguous, large, or multi-step requests.
- Convert the raw request into an execution-ready prompt with objective, scope, requirements, constraints, validation, and handoff.
- Use Plan Mode when work is substantial or has unclear requirements; for straightforward tasks, proceed directly.
- Do not block implementation for simple, clear requests that can be executed safely.

2. Prompt Intake
- Rewrite the user request into one clear objective.
- Tag request type: feature, bug fix, refactor, docs, test, or research.
- Identify impacted modules: ingestion, parsing, AI generation, memory, quiz, UI, storage.
- Create a module impact list: `affected` and `unaffected`.

3. Scope And Policy Check
- Validate request against BRD.md and PRD.md.
- Validate technical decisions against `architecture.md`, `MOBILE_ARCHITECTURE.md`, `CODING_STANDARDS.md`, `KARPATHY_CODING_GUIDELINES.md`, and `DB_SPEC.md`.
- Confirm it does not violate offline-first and local-only defaults.
- If request expands scope, document the scope change first (Rule 14 in AGENT_POLICY.md).

4. Privacy And Data Safety Gate
- Check if the change touches uploaded content, summaries, quiz history, or Exports.
- Enforce: no automatic cloud transfer, explicit user action for Export, local storage only by default.
- If privacy impact exists, note it in the implementation summary.

5. Design And Acceptance Mapping
- Map changes to PRD requirements and acceptance criteria.
- Define exact behavior change and non-goals.
- If information is missing, stop and request clarification. Do not make assumptions.

6. Implementation Plan
- Break work into small tasks with target files.
- Prefer minimal, reversible edits.
- Include migration and rollback notes for schema or memory logic changes.
- For any new feature, plan required artifacts:
- Feature documentation `.md` file (new or updated module doc).
- E2E tests aligned to platform policy (Flutter Integration Test for mobile; Flutter Web Test for non-mobile surfaces).
- Any required config/routes/types updates needed for production readiness.
- If the task requires new reusable agent behavior, invoke `$skill-generator` to create/update a skill before implementation continues.
- Before creating a new skill, audit existing `skills/*` and prefer updating an existing skill when feasible.
- Create or update skills only inside this repo at `./skills/<skill-name>/` (never in root Codex skill directories).

7. Build
- Implement only approved-scope changes.
- Preserve backward compatibility for local data.
- Keep topic-level traceability intact: document -> summary -> task/quiz -> result -> review.
- If a module is affected, update that module's `.md` documentation in the same change.

8. Verify
- Run lint, typecheck/build, and tests only for affected modules.
- Use Flutter Integration Test for Flutter iOS user-facing flows.
- Use Flutter Web Test only for non-mobile user-facing surfaces.
- Add/update regression tests for scoring, memory updates, and review recommendations when affected.
- Confirm core flow still works offline.
- Do not run tests for unaffected modules.

9. Documentation Update
- Update BRD.md or PRD.md when requirements, scope, or acceptance criteria changed.
- Keep `architecture.md`, `MOBILE_ARCHITECTURE.md`, `CODING_STANDARDS.md`, and `DB_SPEC.md` aligned.
- Invoke `$dolphi-doc-maintainer` when structure, policy, workflow, testing, or standards docs are affected.
- Record risks and open questions; resolve open questions before implementation.
- If any documentation or policy drift is detected, record:
- `Alpha Baseline`: the pre-change source-of-truth state.
- `Delta Changes`: the exact modifications made to remove drift.

10. Delivery Output
- Return: changed files, behavior impact, validation results, risks, and follow-up items.
- Explicitly call out privacy impact, schema impact, and scope impact (even if none).
- Include affected module list, unaffected module list, and which tests were intentionally skipped.
- Include `Alpha Baseline` and `Delta Changes` whenever drift was present in the task.
- Include a `No Assumptions Check` result confirming all required inputs were explicitly provided.
