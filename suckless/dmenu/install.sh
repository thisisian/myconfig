tar -xvf dmenu-5.0.tar.gz
cd dmenu-5.0
patch -p1 < ../dmenu-fuzzymatch-4.9.diff
mv config.def.h config.h # use default config
sudo make install
cd ../
rm -rf dmenu-5.0
