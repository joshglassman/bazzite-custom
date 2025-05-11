#!/bin/bash

set -ouex pipefail

# Install packages from standard repos
dnf5 -y install \
    bcc \
    bpftrace \
    nicstat \
    perf \
    sysprof \
    tiptop \
    trace-cmd \
    zsh

# Install additional packages from alternative repos
dnf5 config-manager addrepo --id="vscode" \
    --set=baseurl="https://packages.microsoft.com/yumrepos/vscode" \
    --set=gpgkey="https://packages.microsoft.com/keys/microsoft.asc" \
    --set=gpgcheck=1
dnf5 config-manager setopt vscode.enabled=0
dnf5 -y install --enable-repo="vscode" \
    code

dnf5 config-manager addrepo --from-repofile="https://download.docker.com/linux/fedora/docker-ce.repo"
dnf5 config-manager setopt docker-ce-stable.enabled=0
dnf5 install -y --enable-repo="docker-ce-stable" \
    containerd.io
    docker-buildx-plugin
    docker-ce
    docker-ce-cli
    docker-compose-plugin
