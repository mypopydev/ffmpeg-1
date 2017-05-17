#!/bin/bash

echo "Start the system update..."
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt install \
autoconf automake build-essential libopenjpeg5 fonts-dejavu-core fontconfig-config \
i965-va-driver git libtool pkg-config texinfo nasm yasm libass-dev mesa-vdpau-drivers checkinstall \
zlib1g-dev libxvidcore-dev libfontconfig1 cmake libsdl2-dev libopenjpeg-dev ladspa-sdk libsoxr-dev \
libschroedinger-dev libspeex-dev python-dev python-pip python-tk libssl-dev -y
sudo apt clean -y
sudo apt autoremove -y
echo "End of the system update"