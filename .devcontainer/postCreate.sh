#!/usr/bin/env bash
set -euo pipefail

bundle config set --global path ${HOME}/.bundle
bundle config set --global bin ${PWD}/src/bin

(cd src && bundle install && bundle binstubs asciidoctor)

curl -fqsLS https://claude.ai/install.sh | bash

hugo version | echo "hugo: $(cat -)"
sass --version | echo "dart-sass: $(cat -)"
asciidoctor --version | echo "asciidoctor: $(cat -)"
go version | echo "go: $(cat -)"
claude --version | echo "claude code: $(cat -)"
