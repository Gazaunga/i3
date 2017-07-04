#!/bin/bash
cd ~
mkdir .fonts
cd .fonts
wget http://int10h.org/oldschool-pc-fonts/download/ultimate_oldschool_pc_font_pack_v1.0.zip
unzip ultimate_oldschool_pc_font_pack_v1.0.zip
git clone https://github.com/tonsky/FiraCode.git
git clone https://github.com/sunaku/tamzen-font.git
git clone https://github.com/FortAwesome/Font-Awesome.git
# make optional?
pacaur -S --noconfirm --noedit ttf-hack \
  ttf-ms-fonts \
  ttf-google-fonts-git \
  adobe-source-code-pro-fonts \
  ttf-ubuntu-font-family \
  noto-fonts-emoji \
  ttf-symbola \
  font-mathematica \
  ttf-mac-fonts \
fc-cache -v
