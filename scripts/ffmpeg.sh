#!/bin/bash

#mkdir $HOME/install
cd $HOME/install
git clone git://source.ffmpeg.org/ffmpeg
cd $HOME/install/ffmpeg
PATH="$HOME/ffmpeg/bin:$PATH" PKG_CONFIG_PATH="$HOME/ffmpeg/lib/pkgconfig"
./configure \
	--prefix="$HOME/ffmpeg" \
	--pkg-config-flags="--static" \
	--extra-cflags="-I$HOME/ffmpeg/include" \
	--extra-ldflags="-L$HOME/ffmpeg/lib" \
	--extra-libs="-lpthread -lm" \
	--bindir="$HOME/ffmpeg/bin"
	--enable-gpl \
	--enable-nonfree \
	--enable-libsrt \
	--enable-libaom \
	--enable-ladspa \
	--enable-libpulse \
	--enable-libsoxr \
	--enable-libspeex \
	--enable-avfilter \
	--enable-postproc \
	--enable-pthreads \
	--enable-libfdk-aac \
	--enable-libmp3lame \
	--enable-libopus \
	--enable-libtheora \
	--enable-libvorbis \
	--enable-libvpx \
	--enable-libx264 \
	--enable-libx265 \
	--enable-libkvazaar \
	--disable-ffplay \
	--enable-libopenjpeg \
	--enable-libwebp \
	--enable-libxvid \
	--enable-libvidstab \
	--enable-libopenh264 \
	--enable-zlib \
	--enable-openssl
PATH="$HOME/ffmpeg/bin:$PATH" make
sudo make install
make distclean
source ~/.profile
