#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade

# git 
sudo apt-get -y install git-core git-doc git-gui

# zsh
sudo apt-get -y install zsh zsh-doc

# tmux
sudo apt-get -y install tmux

# vim
# https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
sudo apt-get -y install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial

sudo apt-get -y install checkinstall

sudo apt-get -y install ctags cmake

# run ~/.vim/vim-update.sh

# google chrome
# http://www.howopensource.com/2011/10/install-google-chrome-in-ubuntu-11-10-11-04-10-10-10-04/
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get -y install google-chrome-stable
#sudo apt-get install google-chrome-beta

# Oracle java
# http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java7-installer
sudo mkdir /opt/google/chrome/plugins
sudo ln -s /usr/lib/jvm/java-7-oracle/jre/lib/amd64/libnpjp2.so /opt/google/chrome/plugins/libnpjp2.so

#i3 + gnome3
# http://blog.hugochinchilla.net/2013/03/using-gnome-3-with-i3-window-manager/
sudo echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get --allow-unauthenticated install sur5r-keyring
sudo apt-get update
sudo apt-get -y install gnome-session gnome-settings-daemon gnome-panel i3
sudo apt-get -y install classicmenu-indicator feh     

#node
sudo apt-get -y install nodejs npm nodejs-legacy
#redis
sudo apt-get -y install redis-server
#varnish
sudo apt-get -y install varnish

#apache, php, mysql
sudo apt-get -y install apache2
sudo apt-get -y install php5 php5-dev php5-gd php5-curl php5-json php5-mysql php5-xdebug
sudo apt-get -y install phpunit phpunit-mock-object phpunit-selenium phpunit-story
sudo apt-get -y install mysql-server

sudo adduser $USER www-data
sudo adduser www-data $USER
