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
    containerd.io \
    devpod \
    flatpak-builder \
    genisoimage \
    google-droid-sans-mono-fonts \
    google-go-mono-fonts \
    ibm-plex-mono-fonts \
    incus \
    incus-agent \
    iotop \
    kcli \
    libvirt-nss \
    intel-one-mono-fonts \
    monaspace-nerd-fonts \
    mozilla-fira-mono-fonts \
    nicstat \
    numactl \
    osbuild-selinux \
    podman-bootc \
    podman-machine \
    podman-tui \
    podmansh \
    powerline-fonts \
    python3-ramalama \
    qemu-img \
    qemu-system-x86-core \
    qemu-user-binfmt \
    rocm-hip \
    rocm-opencl \
    rocm-smi \
    sysprof \
    tiptop \
    trace-cmd \
    umoci \
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

dnf5 config-manager addrepo --id="docker-ce" \
    --set=baseurl="https://download.docker.com/linux/fedora/$releasever/$basearch/stable" \
    --set=gpgkey="https://download.docker.com/linux/fedora/gpg" \
    --set=gpgcheck=1 \
    --set=enabled=0
dnf5 -y install --enable-repo="docker-ce" \
    docker-ce \
    docker-ce-cli \
    docker-buildx-plugin \
    docker-compose-plugin \

# Enable a System Unit File
if rpm -q docker-ce >/dev/null; then
    systemctl enable docker.socket
fi
systemctl enable podman.socket
