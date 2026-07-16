#!/bin/bash

set -ouex pipefail

# Copy Files to Image
rsync -rvK /ctx/system_files/ /

# Install packages from fedora repos
dnf -y install \
    bcc \
    bpftrace \
    nicstat \
    perf \
    sysstat \
    tiptop \
    trace-cmd \
    zsh

# Install additional packages from copr repos
dnf -y copr enable wezfurlong/wezterm-nightly
dnf -y install wezterm
dnf -y copr disable wezfurlong/wezterm-nightly

# Install additional packages from third-party repos
dnf config-manager addrepo --id="vscode" \
    --set=baseurl="https://packages.microsoft.com/yumrepos/vscode" \
    --set=gpgkey="https://packages.microsoft.com/keys/microsoft.asc" \
    --set=gpgcheck=1
dnf config-manager setopt vscode.enabled=0
dnf -y install --enable-repo="vscode" \
    code

dnf config-manager addrepo --from-repofile="https://www.scootersoftware.com/scootersoftware.repo"
dnf config-manager setopt scootersoftware.enabled=0
dnf -y install --enable-repo="scootersoftware" \
    bcompare

# Apply IP Forwarding before installing Docker to prevent messing with LXC networking
sysctl -p

# Load iptable_nat module for docker-in-docker.
# See:
#   - https://github.com/ublue-os/bluefin/issues/2365
#   - https://github.com/devcontainers/features/issues/1235
mkdir -p /etc/modules-load.d && cat >>/etc/modules-load.d/ip_tables.conf <<EOF
iptable_nat
EOF

dnf config-manager addrepo --from-repofile="https://download.docker.com/linux/fedora/docker-ce.repo"
dnf config-manager setopt docker-ce-stable.enabled=0
dnf -y install --enable-repo="docker-ce-stable" \
    containerd.io \
    docker-buildx-plugin \
    docker-ce \
    docker-ce-cli \
    docker-compose-plugin

# Enable sockets and services
systemctl enable podman.socket
systemctl enable custom-setup.service
systemctl enable docker.service
systemctl enable containerd.service

# Clean up
dnf -y clean all
