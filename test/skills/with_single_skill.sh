#!/usr/bin/env bash
set -e

source dev-container-features-test-lib

check "only the specified skill installed" bash -c '[ "$(ls ~/.claude/skills)" = web-design-guidelines ]'

reportResults
