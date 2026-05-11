# Skill Documentation Policy

## Required Updates Per Skill Change

For every new or updated skill:

1. Update the skill `SKILL.md`:
- Keep `name` and `description` frontmatter accurate.
- Keep workflow/rules/output contract aligned with actual behavior.
- Enforce plan-first routing via `$task-orchestrator` where applicable.

2. Update `agents/openai.yaml`:
- Keep `display_name` and `short_description` accurate.
- Keep `default_prompt` aligned with current workflow chain.

3. Update [README.md](README.md):
- Reflect chain or routing changes.
- Reflect skill catalog changes.

4. Record lifecycle decision in [SKILL_CHANGELOG.md](SKILL_CHANGELOG.md):
- Use `updated existing` when modifying behavior of an existing skill.
- Use `created new` only when a separate skill boundary is required.

## Documentation Quality Bar

- Keep wording implementation-oriented and unambiguous.
- Keep scope boundaries explicit (`when to use`, `when not to use` if needed).
- Keep command examples non-interactive by default.
