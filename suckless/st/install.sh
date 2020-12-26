tar -xvf st-0.8.4.tar.gz
cd st-0.8.4
patch -p1 < ../st-clipboard-0.8.3.diff 
cp ../config.h .
sudo make install
cd ../
rm -rf st-0.8.4
