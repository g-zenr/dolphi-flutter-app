# AGENT INDEX - DOLPHI PROJECT

This file is the entrypoint for all project agent guidance.

## Read In This Order
1. `context.md`
2. `docs/governance/SETUP_ROADMAP.md`
3. `docs/governance/AGENT_POLICY.md`
4. `docs/governance/AGENT_WORKFLOW.md`
5. `docs/governance/AGENT_TEMPLATE.md`
6. `docs/architecture/architecture.md`
7. `docs/architecture/MOBILE_ARCHITECTURE.md`
8. `docs/architecture/CODING_STANDARDS.md`
9. `docs/architecture/DB_SPEC.md`
10. `docs/architecture/DESIGN_PRINCIPLES.md`
11. `docs/product/BRD.md`
12. `docs/product/PRD.md`

## Purpose Of Each File
- `context.md`: Book-style root context for token-efficient loading and chapter-based navigation.
- `docs/governance/SETUP_ROADMAP.md`: Foundation phase tracker, phased acceptance gates, and readiness checklist.
- `docs/governance/AGENT_POLICY.md`: Rules, guardrails, privacy/security constraints, definition of done, and change control.
- `docs/governance/AGENT_WORKFLOW.md`: Required step-by-step process to follow for every prompt.
- `docs/governance/AGENT_TEMPLATE.md`: Standard response format for each implementation output.
- `docs/architecture/architecture.md`: High-level architecture and module boundaries.
- `docs/architecture/MOBILE_ARCHITECTURE.md`: iOS-first RN architecture decisions and layering direction.
- `docs/architecture/CODING_STANDARDS.md`: Clean-code principles and modular coding rules.
- `docs/architecture/DB_SPEC.md`: SQLite/Sqflite persistence decisions and migration policy.
- `docs/architecture/DESIGN_PRINCIPLES.md`: UI clean-design principles (Shrink, Hide, Embody).
- `docs/product/BRD.md`: Business objectives, scope, stakeholders, and business requirements.
- `docs/product/PRD.md`: Product behavior, functional/non-functional requirements, and acceptance criteria.

## Repo Skill
- Skill path: `skills/dolphi-agent-executor/SKILL.md`
- Invocation example: `Use $dolphi-agent-executor at C:\Users\Renz\Documents\embeded-ai\delphi\skills\dolphi-agent-executor\SKILL.md for this task.`
- Doc maintenance skill: `skills/dolphi-doc-maintainer/SKILL.md`
- Doc maintenance invocation: `Use $dolphi-doc-maintainer at C:\Users\Renz\Documents\embeded-ai\delphi\skills\dolphi-doc-maintainer\SKILL.md to align repository docs after this change.`

## Local Skills Only
- Keep all skills in this repo under `skills/`.
- Local prompt generator skill: `skills/codex-prompt-generator/SKILL.md`
- Local GitHub push helper skill: `skills/github-push-helper/SKILL.md`


