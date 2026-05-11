---
name: github-push-helper
description: Publish local repository changes to GitHub with a predictable non-interactive flow. Use when the user asks to push local changes to a target GitHub remote and branch.
---

# GitHub Push Helper

## Overview

Push local repository state to GitHub safely and consistently.

## Planning And Orchestration Gate

Always run `$task-orchestrator` first so planning is enforced before publish steps:
`$codex-prompt-generator -> $task-generator -> optional $skill-generator -> $github-push-helper`.

## Inputs Required

- `origin_url`: GitHub remote URL (HTTPS or SSH)
- `branch`: target branch (default `main`)
- `commit_message`: message when changes need a commit

## Workflow

1. Validate Git availability: `git --version`.
2. If `.git` is missing, initialize repository: `git init`.
3. Ensure branch is set: `git branch -M <branch>`.
4. Set or update `origin` remote:
- If no remote, add: `git remote add origin <origin_url>`.
- If existing remote differs, update: `git remote set-url origin <origin_url>`.
5. Stage files: `git add .`.
6. Commit only when staged changes exist.
7. Push upstream: `git push -u origin <branch>`.
8. Return remote URL, branch, and pushed commit hash.

## Safety Rules

- Never use destructive reset commands.
- Never force-push unless explicitly requested.
- Do not alter unrelated remotes.

## Output Contract

- Objective
- Plan Used
- Executed Commands
- Result (remote, branch, commit)
- Risks/Notes
