#!/usr/bin/env bash

set -euo pipefail

export GEM_HOME="$HOME/.gem"
export GEM_PATH="$GEM_HOME:$(ruby -r rubygems -e 'puts Gem.default_path.join(":")')"
export PATH="$GEM_HOME/bin:$PATH"

exec "$@"
