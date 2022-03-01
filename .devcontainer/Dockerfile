# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.222.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version (use bullseye on local arm64/Apple Silicon): bullseye, buster
ARG VARIANT="3.8"
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

COPY library-scripts/*.sh /tmp/library-scripts/
RUN bash /tmp/library-scripts/aws-sam-cli.sh \ 
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/gpg /usr/local/bin/gpg