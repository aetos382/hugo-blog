#!/usr/bin/env bash
set -euo pipefail

(cd src && bundle install)

curl -fsSL https://claude.ai/install.sh | bash

hugo version | echo "hugo: $(cat -)"
sass --version | echo "dart-sass: $(cat -)"
asciidoctor --version | echo "asciidoctor: $(cat -)"
go version | echo "go: $(cat -)"
claude --version | echo "claude code: $(cat -)"
