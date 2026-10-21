# Dev Container Features

## `skills`

Installs agent skills with [`skills add`](https://github.com/vercel-labs/skills) via `pnpm dlx`.

```json
"features": {
    "ghcr.io/devcontainers/features/node:1": {},
    "ghcr.io/mezum/devcontainer-features/skills:1": {
        "skills": "vercel-labs/agent-skills,anthropics/skills"
    }
}
```

See [src/skills](src/skills) for options.
