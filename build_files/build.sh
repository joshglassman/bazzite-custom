#!/bin/bash

set -ouex pipefail

# Install packages from standard repos
dnf5 -y install \
    android-tools \
    bcc \
    bpftop \
    bpftrace \
    cargo \
    cascadia-code-fonts \
    clang-devel \
    cockpit-machines \
    cockpit-ostree \
    devpod \
    flatpak-builder \
    glad2 \
    glm-devel \
    google-droid-sans-mono-fonts \
    google-go-mono-fonts \
    ibm-plex-mono-fonts \
    incus \
    incus-agent \
    iotop \
    libvirt-nss \
    intel-one-mono-fonts \
    monaspace-nerd-fonts \
    mozilla-fira-mono-fonts \
    nicstat \
    numactl \
    osbuild-selinux \
    powerline-fonts \
    python-glad2 \
    python3-ramalama \
    qemu-user-binfmt \
    rocm-hip \
    rocm-opencl \
    rocm-smi \
    rust-analyzer \
    sysprof \
    tiptop \
    trace-cmd \
    virt-manager \
    virt-viewer \
    virt-v2v

# Special handling for installing glfw and dependencies
dnf5 -y --setopt=disable_excludes=* install \
    glfw-devel

# Install additional packages from alternative repos
dnf5 config-manager addrepo --id="vscode" \
    --set=baseurl="https://packages.microsoft.com/yumrepos/vscode" \
    --set=gpgkey="https://packages.microsoft.com/keys/microsoft.asc" \
    --set=gpgcheck=1 \
    --set=enabled=0
dnf5 -y install --enable-repo="vscode" \
    code
