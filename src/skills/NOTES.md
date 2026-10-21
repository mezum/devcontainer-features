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
