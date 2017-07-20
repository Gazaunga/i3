# ruby install
wget -O ruby-install-0.6.1.tar.gz \
  https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install

# move home
cd ~

# check to see if it isntalled successfully
ruby-install -v

# install ruby
ruby-install ruby 2.4.1

# install chruby
wget -O chruby-0.3.9.tar.gz \
  https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzvf chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install

# move home
cd ~

# configure chruby
cat >> ~/.$(basename $SHELL)rc <<EOF
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
EOF

exec $SHELL

touch .ruby-version
cat "ruby-2.4.1" >> .ruby-version

gem install rails -v 5.1.2 --no-rdoc --no-ri
gem install jekyll --no-rdoc --no-ri
gem install thor --no-rdoc --no-ri
gem install bundler --no-rdoc --no-ri
gem install colorize --no-rdoc --no-ri

