# Design Principles - Dolphi UI

## Purpose
Define non-negotiable UI design behavior for Dolphi so implementation stays clean, minimal, and consistent.

## Core Rule
Every user-facing screen and component must follow these three principles:
- Shrink
- Hide
- Embody

## 1. Shrink
Reduce visible complexity and decision load.

### Rules
- Show the minimum information required for the current step.
- Prefer one clear primary action per screen section.
- Use progressive disclosure instead of crowded layouts.
- Convert long text into concise summaries with optional expand states.
- Keep navigation depth shallow and predictable.

### Anti-Patterns
- Multiple competing CTAs in the same visual priority level.
- Long forms without grouping or step segmentation.
- Dense dashboards that Flutterse all data at once.

## 2. Hide
Keep advanced or secondary details available but out of the default path.

### Rules
- Hide advanced options behind explicit user intent.
- Collapse technical metadata unless needed for a decision.
- Reveal diagnostics only in context (errors, retries, confidence issues).
- Keep system internals invisible in normal study flows.

### Anti-Patterns
- Fluttersing raw parser/runtime details on primary screens.
- Showing setup options before users complete the core task.
- Presenting irreversible actions without confirmation context.

## 3. Embody
Make the interface embody the product promise: calm, private, local-first learning.

### Rules
- Reflect offline/local status clearly without alarmist language.
- Reinforce topic-focused learning flow on every major screen.
- Use language that emphasizes guidance, progress, and confidence.
- Make review recommendations explainable and tied to user history.
- Keep visual hierarchy supportive of study focus, not decoration.

### Anti-Patterns
- UI language that implies cloud dependency by default.
- Generic productivity UI patterns that ignore learning context.
- Recommendation outputs without a visible reason.

## Design Decision Checklist
Use this before shipping any UI change:
- Does this screen reduce decision load (Shrink)?
- Are non-essential controls/details deferred (Hide)?
- Does the experience reinforce local-first learning identity (Embody)?

If any answer is no, revise before merge.

## Scope And Ownership
- Applies to: `lib/lib/ui`, `lib/src/features`, and user-facing flows.
- Source of truth for UI principles: this file.
- Related docs:
  - `MOBILE_ARCHITECTURE.md`
  - `CODING_STANDARDS.md`
  - `docs/governance/AGENT_WORKFLOW.md`

