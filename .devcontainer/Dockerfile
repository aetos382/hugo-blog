FROM mcr.microsoft.com/devcontainers/base:2-noble

ARG HUGO_VERSION=0.160.1

RUN curl -qfsSL https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_linux-amd64.deb -o hugo.deb && \
    dpkg -i hugo.deb && \
    rm hugo.deb

USER vscode

RUN mkdir -p /home/vscode/.claude
