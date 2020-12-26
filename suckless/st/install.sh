tar -xvf st-0.8.2.tar.gz
cd st-0.8.2
patch -p1 < ../st-scrollback-0.8.2.diff 
cp ../config.h .
sudo make install
cd ../
rm -rf st-0.8.2
