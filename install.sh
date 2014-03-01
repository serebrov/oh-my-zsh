sudo apt-get update
sudo apt-get dist-upgrade

# git 
sudo apt-get install git-core git-doc git-gui

# zsh
sudo apt-get install zsh zsh-doc

# vim
# https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial

sudo apt-get install checkinstall

# run ~/.vim/vim-update.sh

# google chrome
# http://www.howopensource.com/2011/10/install-google-chrome-in-ubuntu-11-10-11-04-10-10-10-04/
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
# sudo apt-get install google-chrome-stable
sudo apt-get install google-chrome-beta

# Oracle java
# http://www.webupd8.org/2012/01/install-oracle-java-jdk-7-in-ubuntu-via.html
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

#i3
sudo apt-get install i3
sudo apt-get install classicmenu-indicator feh     

#node
sudo apt-get install nodejs 
#redis
sudo apt-get install redis-server

#apache, php, mysql
sudo apt-get install apache2 php5 php5-dev php5-gd php5-curl php5-json php5-mysql php5-xdebug mysql-server-5.1 php-pear 

sudo adduser $USER www-data
sudo adduser www-data $USER
