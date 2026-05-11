---
name: codex-prompt-generator
description: Generate clear, ready-to-paste prompts for Codex that turn rough requests into executable instructions with scope, constraints, acceptance criteria, and validation steps. Use when you want a high-quality prompt before asking Codex to implement features, fix bugs, refactor code, review changes, write tests, or perform deployments.
---

# Codex Prompt Generator

## Overview

Transform an incomplete task request into a production-ready Codex prompt.
Return one final prompt block the user can paste directly into Codex.

## Workflow

1. Extract task intent, target repo or folders, and expected outcome.
2. Normalize missing details into explicit assumptions.
3. Add implementation constraints, validation commands, and handoff format.
4. Handoff the resulting prompt to `$task-generator` for dependency-aware planning.
5. Output only the final prompt unless the user asks for alternatives.

## Prompt Output Contract

Use this structure in every generated prompt.

```text
You are working in: <repo-or-path>
Mode: Plan

Objective:
<single outcome-focused objective>

Scope:
- In scope: <what to change>
- Out of scope: <what not to touch>

Requirements:
- <functional requirement 1>
- <functional requirement 2>

Constraints:
- Preserve backward compatibility for <contracts/fields/behaviors>
- Do not revert unrelated local changes
- Keep edits minimal and targeted
- Run in Plan Mode first; do not start implementation without a plan

Implementation Notes:
- Update both frontend and backend when contracts or payloads change
- Add or update tests for meaningful behavior changes

Validation:
- Run: <command 1>
- Run: <command 2>
- Run: <command 3>
- If any command fails, report the exact failure and stop

Handoff:
- Summarize changed files and behavior impact
- List validation commands with pass/fail status
- List risks, compatibility notes, and follow-up items
```

## Generation Rules

- Prefer precise verbs: implement, refactor, validate, audit, migrate, deploy.
- Convert vague words into measurable checks.
- Include exact directories when known.
- Include acceptance criteria for user-visible behavior.
- Keep the final prompt concise enough to execute in one Codex run.

## Reusable Blueprints

Use [prompt-blueprints.md](references/prompt-blueprints.md) for task-specific prompt patterns:
- feature implementation
- bug fix
- code review
- test hardening
- release/deploy

## Orchestration Handoff

After generating the final prompt:
1. Invoke `$task-generator`.
2. Route planning and execution through `$task-orchestrator`.
