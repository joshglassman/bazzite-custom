#!/bin/bash

set -ouex pipefail

# Copy Files to Image
rsync -rvK /ctx/system_files/ /

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y \
    bcc \
    bpftrace \
    nicstat \
    perf \
    sysprof \
    tiptop \
    trace-cmd \
    zsh

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

# Install additional packages from alternative repos
dnf5 config-manager addrepo --id="vscode" \
    --set=baseurl="https://packages.microsoft.com/yumrepos/vscode" \
    --set=gpgkey="https://packages.microsoft.com/keys/microsoft.asc" \
    --set=gpgcheck=1
dnf5 config-manager setopt vscode.enabled=0
dnf5 -y install --enable-repo="vscode" \
    code

dnf5 config-manager addrepo --from-repofile="https://www.scootersoftware.com/scootersoftware.repo"
dnf5 config-manager setopt scootersoftware.enabled=0
dnf5 -y install --enable-repo="scootersoftware" \
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

dnf5 config-manager addrepo --from-repofile="https://download.docker.com/linux/fedora/docker-ce.repo"
dnf5 config-manager setopt docker-ce-stable.enabled=0
dnf5 install -y --enable-repo="docker-ce-stable" \
    containerd.io \
    docker-buildx-plugin \
    docker-ce \
    docker-ce-cli \
    docker-compose-plugin

#### Example for enabling a System Unit File

systemctl enable podman.socket
systemctl enable custom-setup.service
systemctl enable docker.service
systemctl enable containerd.service
