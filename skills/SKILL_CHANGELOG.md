# Skill Changelog

## 2026-05-09

- `task-generator`: `created new` - added prompt-to-task planning skill with dependency and validation output contract.
- `task-orchestrator`: `created new` - added orchestrator skill enforcing strict plan-first chain.
- `skill-generator`: `created new` - added skill lifecycle and missing-capability generation skill.
- `codex-prompt-generator`: `updated existing` - wired handoff to task generation and orchestration flow.
- `dolphi-agent-executor`: `updated existing` - now requires orchestrator-first planning and uses skill-generator for gaps.
- `dolphi-doc-maintainer`: `updated existing` - now explicitly requires orchestrator-first planning before doc edits.
- `github-push-helper`: `updated existing` - standardized skill format, added planning/orchestration gate.
- `github-push-helper/agents/openai.yaml`: `created new` - added missing agent interface for skill invocation.
- `docs/architecture/KARPATHY_CODING_GUIDELINES.md`: `created new` - added repo-wide Karpathy-style coding baseline.
- `docs/architecture/CODING_STANDARDS.md`: `updated existing` - linked and enforced Karpathy-style requirements.
- `docs/governance/AGENT_POLICY.md`: `updated existing` - engineering rules now explicitly require Karpathy guideline compliance.
- `docs/governance/AGENT_WORKFLOW.md`: `updated existing` - scope/policy checks now include Karpathy guidelines and `skill-generator` terminology.
- `skills/dolphi-agent-executor`: `updated existing` - required context and execution rules now include Karpathy guideline enforcement.
- `skills/task-generator`: `updated existing` - planning output now requires simplicity/readability checks against Karpathy guidelines.
- `skills/task-orchestrator`: `updated existing` - planning gate now enforces Karpathy guideline checks.
- `docs/governance/AGENT_POLICY.md`: `updated existing` - replaced assumption-permitted UX/doc language with strict clarification-first policy.
- `docs/governance/AGENT_WORKFLOW.md`: `updated existing` - enforced no-assumption workflow and added delivery `No Assumptions Check`.
- `skills/task-generator`: `updated existing` - replaced `Assumptions` output with `Missing Required Inputs` and explicit no-invention rule.
- `skills/task-orchestrator`: `updated existing` - readiness gate now requires `No assumptions used: yes`.
