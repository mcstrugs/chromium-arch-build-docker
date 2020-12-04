#!/bin/sh

pacman -Syu --noconfirm

pacman -S --noconfirm gtk3 nss alsa-lib xdg-utils libxss libcups ttf-liberation libpulse json-glib desktop-file-utils hicolor-icon-theme fontconfig harfbuzz libjpeg libpng re2 snappy ffmpeg flac libwebp minizip libxslt freetype2 opus python python2 gperf mesa ninja nodejs libva libpipewire02 clang lld gn java-runtime-headless python2-setuptools git

useradd -mg wheel build

cd /home/build
git clone https://github.com/ungoogled-software/ungoogled-chromium-archlinux.git

chown -R build /home/build
su build
