#!/bin/sh

VERSION=0.9
tar -xvf st-${VERSION}.tar.gz
cd st-${VERSION} || exit
patch -p1 < ../st-clipboard-0.8.3.diff 
cp ../config.h .
sudo make install
cd ../
rm -rf st-${VERSION}
