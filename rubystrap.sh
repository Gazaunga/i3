#!/bin/bash
source ~/i3/.local/bin/.scripts/utils.sh

echo "     _ _     _                _     "
echo " ___(_) |_  | |__   __ _  ___| | __ "
echo "/ __| | __| | '_ \ / _\` |/ __| |/ /"
echo "\__ \ | |_  | |_) | (_| | (__|   <  "
echo "|___/_|\__| |_.__/ \__,_|\___|_|\_\ "
echo "                                    "
echo "--------------------------------------"


cd ~
e_header "Let's build rbenv!"
git clone git://github.com/sstephenson/rbenv.git .rbenv
e_arrow "Making ruby-build"
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
e_arrow "Adjusting Profile and Path"
sudo touch /etc/profile.d/rbenv.sh
sudo bash -c "echo "export PATH='$HOME/.rbenv/bin:$PATH'" >> /etc/profile.d/rbenv.sh"
sudo bash -c "echo "eval '$(rbenv init -)'" >> /etc/profile.d/rbenv.sh"
source /etc/profile
e_success "Grabbing Ruby"
rbenv install 2.4.1
rbenv rehash
rbenv global 2.4.1

git config --global user.name "Gazaunga"
git config --global user.email "jeremy.ottley@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true

gem install bundler thor script_executor colorize gosu jekyll rake asciidoctor
bundle install --path vendor/bundle 
e_underline "Read To Program With Ruby!"

# Flatpak repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

cd ~/i3
ruby mv.rb

#rb1 = %x[sudo bash -c echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /etc/profile.d/rben.sh"]
#rb2 = %x[sudo bash -c echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh']

# #{rb1}
# #{rb2}

#check script executor
