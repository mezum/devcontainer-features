#!/usr/bin/env bash
set -e

source dev-container-features-test-lib

check "skills installed" bash -c 'ls ~/.claude/skills | grep .'

reportResults
