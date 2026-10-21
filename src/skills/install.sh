#!/usr/bin/env bash
set -eu

# node feature の pnpm は nvm 配下にあり、ビルド時の PATH には載っていない
export PATH="/usr/local/share/nvm/current/bin:${PATH}"

if [ -n "${SKILLS}" ] && ! command -v pnpm >/dev/null; then
	echo "pnpm not found. Add ghcr.io/devcontainers/features/node to your features." >&2
	exit 1
fi

for skill in ${SKILLS//,/ }; do
	su "${_REMOTE_USER}" -c "PATH='${PATH}' pnpm dlx skills add '${skill}' --global --agent '${AGENT}' --yes"
done
