#!/bin/sh
VERSION=5.2
tar -xvf dmenu-${VERSION}.tar.gz
cd dmenu-${VERSION} || exit
patch -p1 < ../dmenu-fuzzymatch-4.9.diff
mv config.def.h config.h # use default config
sudo make install
cd ../
rm -rf dmenu-${VERSION}
