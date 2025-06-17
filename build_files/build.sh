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
    containerd.io \
    docker-buildx-plugin \
    docker-ce \
    docker-ce-cli \
    docker-compose-plugin

append_group() {
	local group_name="$1"
	if ! grep -q "^$group_name:" /etc/group; then
		echo "Appending $group_name to /etc/group"
		grep "^$group_name:" /usr/lib/group | tee -a /etc/group >/dev/null
	fi
}

append_group docker
mapfile -t wheelarray < <(getent group wheel | cut -d ":" -f 4 | tr ',' '\n')
for user in "${wheelarray[@]}"; do
	usermod -aG docker "$user"
done

systemctl enable docker.socket
