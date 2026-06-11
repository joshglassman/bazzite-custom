<p align="center">
  <a href="https://bazzite.gg/">
    <picture>
      <source srcset="https://raw.githubusercontent.com/ublue-os/bazzite/main/repo_content/Bazzite_Light.svg" media="(prefers-color-scheme: dark)">
      <img src="https://raw.githubusercontent.com/ublue-os/bazzite/main/repo_content/Bazzite.svg" alt="Bazzite"/>
    </picture>
  </a>
</p>

# Table of Contents
- [Table of Contents](#table-of-contents)
  - [About \& Features](#about--features)
    - [Customized Features](#customized-features)
    - [Features from Upstream](#features-from-upstream)
      - [Bazzite](#bazzite)
      - [Universal Blue](#universal-blue)
      - [Features from Fedora Linux (Kinoite \& Silverblue)](#features-from-fedora-linux-kinoite--silverblue)
  - [Why](#why)
  - [Documentation](#documentation)
  - [Verification](#verification)
  - [Secure Boot](#secure-boot)
  - [Special Thanks](#special-thanks)

## Build Status

[![build-bazzite](https://github.com/joshglassman/bazzite-custom/actions/workflows/build.yml/badge.svg)](https://github.com/joshglassman/bazzite-custom/actions/workflows/build.yml) [<img src="https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/ublue-os/countme/main/badge-endpoints/bazzite.json&label=Bazzite&logo=data:image%2Fpng;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABGdBTUEAALGPC%2FxhBQAAAAFzUkdCAdnJLH8AAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAAlwSFlzAAAuIwAALiMBeKU%2FdgAAAAd0SU1FB%2BkHDxYoOpQmhHYAAAXkSURBVFjDnZdtbJvVFYCfc%2B%2BN7diJ80WX1mndtFRtaUfpB7QUSsXHqgwJCSGN%2FVoHA23Aj4HYpqBJTJs0TdqfSds0aZXGtA9tP6ZuEkj7MYlpGisUsGj5aFII0JaVGpI0oUkaJ44%2F3rMfr%2F3Gr2PHZdeydPz61XnOOfd83CvULTN0fI9Rc49Frrcq9tF7BhhIdWEUBOH1zDiZszmsCg6DVSlYlY%2BdykWLef30ibvO8zmWC6Sh4xsEfisqRwyCVf8rSAA3gKk8t0hY9o3h1kMvfeTU%2FMmoHPvPyUPZVgaYCjwt8IpROWIxuBrFUWvYs7WL23b1MLg2juA%2Ft1p5b6U8aFSedci5Iwdf%2FcWXb30t2dIAgT8YlQ0WCcGdGm65oYvN6ztIrYmzZ0cP63rbVoNXtkawaqJW5UmHjN5%2FIHOoqQEydPw2o3JnFVgLtyrEY5ZY1DLQH0OA%2Ft7ItcBrZFlv1fzrwf2nHmpogFW5txnc4udAR7tFFWJR23QLmsD930ibU%2Fn9125%2B6%2BhKAzBrmsGtGkD4bKbIJ%2BN58vkyosuQa4RXttVgkd88su%2Bd%2FfURWKGs1kNRQP2XBb8aGgNbwnEqUafmz0%2FsHYkHZfiNu1OIChFruGlLJ90dbUgFJwipdR0BHOD2g%2F3cuLMneAMPPs0WmMwWMQiiQmHB48rlEpfOLjUyZItV%2BS7wYwD56R%2FHjony2M3buhkcSBBpM7RHLVfnSyHPA2A1EgLJpGN%2BtowqvJmZZX6m7BtR6RdLC2VGMleZHCvWGzJnIf2zt7bPGqNgEHq7IjgrpNbE6Gh3q8L98hGSyTZ6%2BtoA6O52IbhBiMcdBw73MvjFWH0UklbNUV9PpcNdns5TLkN2PM%2FcfHFVuADqwZXpIp9NFVFPmZkqheBV2Yqwa38XnT02iEIl774CIF%2F%2F3ivHROUxg7Bzc5x41PpI9ZXs3b2G%2Fv5EAB85M814Nl%2FJEP8z%2FWmJuSnPByL09kVIpdpDhmTP5XnvxQU%2FUX1D1Hh0un%2Bfmgsy%2F%2BQb8yuy%2Bicbk6ztTwSev%2F%2FuPP%2F462yjDK%2BR8%2By83WPrzo4gItf1R7C6WIVjVcQgN5pW9VwbdirKVof78oVMPrQdiXZXC8f5%2Bnc4W5lizWpbEPr6IsTjlunJAqKt4RZBSuFcQAnBLQajYp1Tf6y6mhFcKwNcnS3hrJDPewAt4VaFvg1tNUkJ%2BUUvBK%2FqdlalZGu6l6uTc3MepaJyeaKAesqViXJLuFPD2nQkgAvC0ryugAOesypjQeuta6NWhQ%2FOLtLblSPR4ZjMLrEwoy3hToTUxlgANyrMjZfq4QDvO4c5Y1bp4YKQ%2FWgJQ2G5tkP1HIZbhK13xIm32wCOB1MjpXo4CmeMUTlpkYVmA6TaKQN4MI6lLqt9ed32CJu2xQO4ANOXingzK44Cp54ZTc%2BYN16%2Bs%2BBU%2Ft4ssaoNqVpSHQnXFL75QIyb7khizTLcK8LFE0uNziJ%2FCw6lTs2vDPLVRnubmy1jUssltWlLgqkLJeazflZHo4aB7VEGt8Xp6nYhzw3CucwCxRmthy8Bz9W2d44cPPmSVXO4PgrdPY6hB74QeOWPXFi8WsYaIZFwoWyvhV98O0%2F25UIj7385PJp%2BavlU7Nf2ty1SrI%2FC4rRy8dxCeMggdHa6AC51cMpwPrPYDD4B%2FDDgVoUPLz03sWPgW0Wr5kv1ezt9oUh3vyOZbAt52Eiemywz9s9FZsbKzQ7CDw6PpkcgPO6X%2F91%2F6ndW5eFGSbZpd4zN2xN0Jl0IXsgps5NFLr9bInfeW6l0eT09PJr%2BeeObUTUknn7TYa1FjtZne%2FZ0gYnTJeJJS2efxXjCwseKFMD5vX01%2BPfr4Q0jUF2P7HvnB07NjyxilmdE7eAKy6vAc8Cjw6PpvzT6U1a7Nj2%2Bd2SfU%2FNrq3LL%2Fwl%2FAXhqeDT932YMuZYb7Hd2v3efU%2FOEVRlyGNsCngOer5RappVu%2BTxX6Wd3fdht1Ry2Knscst6qSfiTnhzwAfCmoieeGd24dK06%2FwcT97y6eGrxwQAAAABJRU5ErkJggg%3D%3D">](https://github.com/ublue-os/bazzite) [![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/ublue-os/bazzite)

## About & Features

This is a custom Bazzite image that takes inspiration from the Bluefin developer images, including Docker and some performance analysis tools. It then includes a few additional developer oriented applications installed system-wide, that can have issues when installed in other ways. It is based on [bazzite-nvidia-open:stable](ghcr.io/ublue-os/bazzite-nvidia-open:stable), which is the Bazzite variant with the KDE desktop and the open source drivers for modern NVIDIA GPUs.

[Please see the official website](https://bazzite.gg/) for a newcomer-friendly explanation of Bazzite. This readme will cover everything in-depth.

[Bazzite](https://bazzite.gg/) is a custom [Fedora Atomic](https://fedoraproject.org/atomic-desktops/) image built with [cloud native](https://universal-blue.org/#cloud-native) technology that brings the best of Linux gaming to **all of your devices - including your favorite handheld**.

Bazzite is built from [ublue-os/main](https://github.com/ublue-os/main) using [Fedora](https://fedoraproject.org/) technology, which means expanded hardware support and built in drivers are included. Additional features are detailed below.

### Customized Features

- [Docker](https://www.docker.com/) pre-installed and configured.
- [Wezterm](https://wezterm.org/) and [zsh](https://zsh.sourceforge.io/FAQ/zshfaq01.html#l3) pre-installed.
- [VS Code](https://code.visualstudio.com/) and [Beyond Compare](https://www.scootersoftware.com/) pre-installed.
- Performance analysis CLI tools pre-installed: `bcc`, `bpftrace`, `nicstat`, `tiptop`, `trace-cmd`

```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/joshglassman/bazzite-custom:latest
```

**For users with Secure Boot enabled:** Follow our [secure boot documentation](#secure-boot) prior to rebasing.

### Features from Upstream

#### Bazzite

- Automatic updates for the OS, Flatpaks, and more - powered by [uupd](https://github.com/ublue-os/uupd) and [topgrade](https://github.com/topgrade-rs/topgrade).
- Uses the [bazzite kernel](https://github.com/bazzite-org/kernel-bazzite) to achieve HDR and expanded hardware support, among numerous other included patches.
- HDR available in Game mode.
- Open source NVIDIA drivers pre-installed.
- Full hardware accelerated codec support for H264 decoding.
- Full support for AMD's ROCM OpenCL/HIP run-times.
- [xone](https://github.com/medusalix/xone) driver for Xbox controllers.
- Full support for [DisplayLink](https://www.synaptics.com/products/displaylink-graphics).
- Includes Valve's KDE themes from SteamOS.
- [vkBasalt](https://github.com/DadSchoorse/vkBasalt), [MangoHud](https://github.com/flightlessmango/Mangohud), and [OBS VkCapture](https://github.com/nowrep/obs-vkcapture) installed and available by default.
- [ROM Properties Page shell extension](https://github.com/GerbilSoft/rom-properties) included.
- Full support for [Winesync/Fastsync/NTsync](https://github.com/Frogging-Family/wine-tkg-git/issues/936).
- [Distrobox](https://github.com/89luca89/distrobox) preinstalled.
- Simplified Davinci Resolve installation with [davincibox](https://github.com/zelikos/davincibox) (`ujust install-resolve`)
- Automated `duperemove` service for reducing the disk space used by wine prefix contents.
- Support for HDMI CEC via [libCEC](https://libcec.pulse-eight.com/).
- Uses [Google's BBR TCP congestion control](https://github.com/google/bbr) by default.
- [Input Remapper](https://github.com/sezanzeb/input-remapper) preinstalled and enabled. <sub><sup>(Available but default-disabled on the Deck variant, may be enabled with `ujust restore-input-remapper`)</sup></sub>
- [Bazzite Portal](https://github.com/ublue-os/yafti-gtk) provides an easy way to install numerous applications( and tweaks, including installing [LACT](https://github.com/ilya-zlobintsev/LACT) and IDEs over [Brew](https://docs.brew.sh/Homebrew-on-Linux). It additionally provides easy buttons to update, rebase and even reset the system image to defaults.
- [Waydroid](https://waydro.id/) preinstalled for running Android apps. Set it up with this [quick guide](https://docs.bazzite.gg/Installing_and_Managing_Software/Waydroid_Setup_Guide/).
- Manage applications using [Flatseal](https://github.com/tchx84/Flatseal), [Warehouse](https://github.com/flattool/warehouse), and [Gear Lever](https://github.com/mijorus/gearlever).
- [OpenRGB](https://gitlab.com/CalcProgrammer1/OpenRGB) i2c-piix4 and i2c-nct6775 drivers for controlling RGB on certain motherboards.
- [OpenRazer](https://openrazer.github.io) drivers built in, Select OpenRazer in Bazzite Portal or run `ujust install-openrazer` in a terminal to begin using it.
- [OpenTabletDriver](https://opentabletdriver.net/) udev rules built in, with the full software suite installable via Bazzite Portal or by running `ujust install-opentabletdriver` in a terminal.
- Out of the box support for [Wooting](https://wooting.io/) keyboards.
- Built in support for Southern Islands <sub><sup>(HD 7000)</sup></sub> and Sea Islands <sub><sup>(HD 8000)</sup></sub> AMD GPUs under the `amdgpu` driver.
- [Webapp Manager](https://github.com/linuxmint/webapp-manager) is available for creating applications from websites for a variety of browsers, including Firefox.

#### Universal Blue

- Flathub is enabled by default.
- [`ujust`](https://github.com/casey/just) commands for convenience.
- Multi-media codecs out of the box.
- Rollback Bazzite from any build within the last 90 days.

#### Features from Fedora Linux (Kinoite & Silverblue)

- A rock solid and stable base.
- System packages stay relatively up to date.
- Can layer Fedora packages to the image without losing them between updates.
- Security focused with [SELinux](https://github.com/SELinuxProject/selinux) preinstalled and configured out of the box.
- The ability to rebase to different Fedora Atomic images, if desired, without losing user data.
- Printing support thanks to [CUPS](https://www.cups.org/) being preinstalled.

## Why

Bazzite started as a project to resolve some of the issues that plague SteamOS, mainly out of date packages (despite an Arch base) and the lack of a functional package manager.

Despite this project also being image-based, you are able to install any Fedora package straight from the command line. These packages will persist across updates <sub><sup>(So go ahead and install that obscure VPN software you spent an hour trying to get working in SteamOS)</sup></sub>. Additionally, Bazzite is updated multiple times a week with packages from upstream Fedora, giving you the best possible performance and latest features - all on a stable base.

Bazzite ships with the latest Linux kernel and SELinux enabled by default with full support for secure boot <sub><sup>(Run `ujust enroll-secure-boot-key` and enter the password `universalblue` if prompted to enroll our key)</sup></sub> and disk encryption, making this a sensible solution for general computing. <sup><sub>(Yes, you can print from Bazzite)</sub></sup>

Read the [FAQ](https://docs.bazzite.gg/General/FAQ/) for details on what makes Bazzite stand out from other Linux based operating systems.

## Documentation

- [Installing and Managing Applications](https://docs.bazzite.gg/Installing_and_Managing_Software/)
- [Updates, Rollbacks, and Rebasing](https://docs.bazzite.gg/Installing_and_Managing_Software/Updates_Rollbacks_and_Rebasing/)
- [Gaming Guide](https://docs.bazzite.gg/Gaming/)

View [additional documentation](http://docs.bazzite.gg/) surrounding the project.

## Verification

These images are signed with sigstore's [cosign](https://docs.sigstore.dev/cosign/key_management/overview/). You can verify the signature by downloading the `cosign.pub` key from this repo and running the following command:

```bash
cosign verify --key cosign.pub ghcr.io/ublue-os/bazzite
```

## Secure Boot

Secure boot is supported with the Bazzite custom key. The pub key can be found [here](https://github.com/ublue-os/bazzite/blob/main/secure_boot.der).
If you'd like to enroll this key prior to installation or rebase, download the key and run the following:

```bash
sudo mokutil --timeout -1
sudo mokutil --import secure_boot.der
```

For users already on a Universal Blue image, you may instead run `ujust enroll-secure-boot-key`.

If asked for a password, use `universalblue`.

## Special Thanks

Bazzite is a community effort and wouldn't exist without everyone's support. Huge thanks to the [Universal Blue](https://universal-blue.org/), [Bazzite](https://bazzite.gg/), and [Bluefin Developer Experience](https://projectbluefin.io/) teams, as well as the countless other people involved, for making such a fantastic OS ecosystem.
