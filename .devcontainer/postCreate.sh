bundle config set --global bin ./bin

(cd src && bundle install && bundle binstubs asciidoctor)

curl -fsSL https://claude.ai/install.sh | bash
