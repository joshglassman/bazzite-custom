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
    trace-cmd

# Install additional packages from alternative repos
dnf5 config-manager addrepo --id="vscode" \
    --set=baseurl="https://packages.microsoft.com/yumrepos/vscode" \
    --set=gpgkey="https://packages.microsoft.com/keys/microsoft.asc" \
    --set=gpgcheck=1 \
    --set=enabled=0
dnf5 -y install --enable-repo="vscode" \
    code
