#!/bin/sh

VERSION=6.4
tar -xvf dwm-${VERSION}.tar.gz 
cd ./dwm-${VERSION} || exit
patch -p1 < ../dwm-noborder-6.2.diff
patch -p1 < ../dwm-push-6.1.diff
cp ../config.h .
sudo make install
cd ../
rm -rf ./dwm-${VERSION}
