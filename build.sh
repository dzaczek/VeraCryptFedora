#!/bin/bash

BUILD_VERA="VersCryptCompile"
dnf install gcc-c++-x86_64-linux-gnu.x86_64 mingw64-gcc-objc++.x86_64 libgcc.x86_64 gcc-objc.x86_64 fuse-devel makeself git pkgconf-pkg-config.i686 mingw64-pkg-config.x86_64
mkdir ${BUILD_VERA}
cd ${BUILD_VERA}
git clone https://github.com/veracrypt/VeraCrypt.git
#WXVER="3.0.4"
WXVER=$(cat  VeraCrypt/src/Build/build_veracrypt_linux.sh | sed -n  's/.*\/wxWidgets-\([0-9]\.[0-9]\.[0-9]\)/\1/p')
WXSRC="https://github.com/wxWidgets/wxWidgets/releases/download/v${WXVER}/wxWidgets-${WXVER}.tar.bz2"
wget ${WXSRC} && tar -xvjf wxWidgets-${WXVER}.tar.bz2
cd VeraCrypt/src/Build/
./build_veracrypt_linux.sh
