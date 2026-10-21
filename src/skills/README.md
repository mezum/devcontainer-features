
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
| agent | Target agent passed to `skills add --agent` | string | claude-code |

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


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/mezum/devcontainer-features/blob/main/src/skills/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
