#!/bin/bash

set -ouex pipefail

# Install packages from standard repos
dnf5 -y install \
    android-tools \
    bcc \
    bpftop \
    bpftrace \
    cascadia-code-fonts \
    cockpit-machines \
    cockpit-ostree \
    devpod \
    flatpak-builder \
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
    python3-ramalama \
    qemu-user-binfmt \
    rocm-hip \
    rocm-opencl \
    rocm-smi \
    sysprof \
    tiptop \
    trace-cmd \
    virt-manager \
    virt-viewer \
    virt-v2v

# Install additional packages from alternative repos
dnf5 config-manager addrepo --id="vscode" \
    --set=baseurl="https://packages.microsoft.com/yumrepos/vscode" \
    --set=gpgkey="https://packages.microsoft.com/keys/microsoft.asc" \
    --set=gpgcheck=1 \
    --set=enabled=0
dnf5 -y install --enable-repo="vscode" \
    code
