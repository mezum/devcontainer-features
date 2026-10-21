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
