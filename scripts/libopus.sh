#!/bin/bash

cd $HOME/install
git clone git://git.opus-codec.org/opus.git
cd $HOME/install/opus
./autogen.sh
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
make
sudo make install
make distclean
sudo ldconfig
