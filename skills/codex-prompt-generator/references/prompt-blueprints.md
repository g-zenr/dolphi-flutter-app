# Prompt Blueprints

Use these as direct prompt templates. Replace angle-bracket placeholders.

## 1) Feature Implementation

```text
You are working in: <path>

Objective:
Implement <feature> so <user outcome>.

Scope:
- In scope: <files/modules>
- Out of scope: <excluded areas>

Requirements:
- <requirement 1>
- <requirement 2>

Validation:
- Run: <test command>
- Run: <lint command>
- Run: <build/typecheck command>

Handoff:
- Changed files and why
- Validation pass/fail
- Risks/follow-ups
```

## 2) Bug Fix

```text
You are working in: <path>

Objective:
Fix <bug> and prevent regression.

Scope:
- In scope: root cause fix + tests
- Out of scope: unrelated refactors

Requirements:
- Reproduce issue with current behavior
- Implement minimal fix
- Add regression test

Validation:
- Run: <repro test>
- Run: <full test/lint/build>

Handoff:
- Root cause
- Fix summary
- Validation status
```

## 3) Code Review

```text
Review current changes with focus on:
- regressions and behavioral risks
- contract mismatches across modules/repos
- missing tests and weak validation

Output format:
1. Findings ordered by severity with file:line
2. Open questions/assumptions
3. Brief change summary
```

## 4) Deploy Preparation

```text
You are working in: <path>

Objective:
Prepare and execute deploy for <service/environment>.

Requirements:
- Run full validation before deploy
- Confirm runtime/dependencies are available
- Execute deploy command
- Capture endpoint/artifact identifiers

Validation:
- Run: <test>
- Run: <lint>
- Run: <build>

Handoff:
- Deploy command used
- Endpoint/artifact produced
- Any warnings and rollback considerations
```

