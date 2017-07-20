#!/usr/bin/env sh

git clone --recursive https://github.com/thestinger/termite.git
cd ../termite && make && sudo make install
cd ~
git clone https://github.com/thestinger/vte-ng.git
cd vte-ng && ./autogen.sh && make && sudo make install
cd ~
sudo mkdir -p /lib/terminfo/x; sudo ln -s \
  /usr/local/share/terminfo/x/xterm-termite \
  /lib/terminfo/x/xterm-termite
