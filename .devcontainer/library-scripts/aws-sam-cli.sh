#!/usr/bin/env bash
set -euo pipefail

VERSION="v1.40.0"

cd /tmp
wget https://github.com/aws/aws-sam-cli/releases/download/${VERSION}/aws-sam-cli-linux-x86_64.zip
sha256sum aws-sam-cli-linux-x86_64.zip

unzip aws-sam-cli-linux-x86_64.zip -d sam-installation
./sam-installation/install
sam --version