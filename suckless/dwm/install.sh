tar -xvf dwm-6.2.tar.gz 
cd ./dwm-6.2
patch -p1 < ../dwm-noborder-6.2.diff
patch -p1 < ../dwm-push-6.1.diff
cp ../config.h .
sudo make install
cd ../
rm -rf ./dwm-6.2
