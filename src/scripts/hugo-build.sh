#!/usr/bin/env bash
set -euo pipefail

SOURCE="$(cd "$(dirname "$0")/.." && pwd)"

(
    export BUNDLE_GEMFILE="$SOURCE/Gemfile"
    export BUNDLE_PATH="${BUNDLE_PATH:-$HOME/.bundle}"
    export BUNDLE_BIN="$SOURCE/bin"

    bundle install
    bundle binstubs asciidoctor --force
    npm ci --prefix "$SOURCE"
    hugo build --source "$SOURCE" "$@"
)
