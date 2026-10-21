
# Agent Skills (skills)

Installs agent skills via `pnpm dlx skills add`

## Example Usage

```json
"features": {
    "ghcr.io/mezum/devcontainer-features/skills:1": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| skills | Comma-separated sources passed to `skills add` (e.g. vercel-labs/agent-skills,anthropics/skills) | string | - |
| agent | Target agent passed to `skills add --agent` (`*` for all agents) | string | claude-code |

## When to use

- **Share the same skills across the team**: everyone who opens the dev container (or a Codespace) gets the same skills, with no per-person setup.
- **Pick skills per repository**: skills are installed into the container, not your host, so each project gets only the skills relevant to it and nothing leaks into other projects.
- **Use third-party skills without vendoring them**: reference a repository instead of copying skill files into yours. Rebuilding the container pulls the latest version.
- **Contain what skills can do**: skills run with full agent permissions; inside a container they only reach what the container can.

## Requirements

Requires the [node feature](https://github.com/devcontainers/features/tree/main/src/node) with pnpm (enabled by default).

```json
"features": {
    "ghcr.io/devcontainers/features/node:1": {},
    "ghcr.io/mezum/devcontainer-features/skills:1": {
        "skills": "vercel-labs/agent-skills,anthropics/skills"
    }
}
```

Each comma-separated source is passed to `pnpm dlx skills add <source> --global --agent <agent> --yes` as the remote user.

## Examples

Sources accept anything `skills add` does: `owner/repo`, a GitHub URL, and so on.

```json
"ghcr.io/mezum/devcontainer-features/skills:1": {
    "skills": "https://github.com/vercel-labs/agent-skills"
}
```

Append `@<skill>` to install only that skill from a repository:

```json
"ghcr.io/mezum/devcontainer-features/skills:1": {
    "skills": "vercel-labs/agent-skills@web-design-guidelines,anthropics/skills@pdf"
}
```

Install to another agent (e.g. `codex`, `cursor`, `gemini-cli`, `github-copilot`), or to all agents with `*`:

```json
"ghcr.io/mezum/devcontainer-features/skills:1": {
    "skills": "anthropics/skills",
    "agent": "codex"
}
```

See the [skills CLI](https://github.com/vercel-labs/skills) for the full list of supported agents.


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/mezum/devcontainer-features/blob/main/src/skills/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
