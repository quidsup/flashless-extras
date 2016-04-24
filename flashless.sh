#!bin/bash
#Title: Flashless Restricted Extras Installer for Ubuntu
#Description: Installs patent encumbered audio and video codecs
#Author: Quidsup
#Date: 24 Apr 2016
#Usage: bash flashless-extras.sh

if [ "$(command -v apt-get)" ]; then        #Is this an Ubuntu / Debian based distro?
  if [[ $(pgrep kwin) != "" ]]; then        #Different set of packages are needed for KDE based systems
    echo "Installing Restricted Extras for KDE based system"
  else
    echo "Installing Restricted Extras"
  fi
else                                        #Throw error for non Deb systems
  echo "Error: Flashless Extras is only written for Debian based systems"
  exit 1
fi

if [ -e /usr/share/doc/libdvdread4/install-css.sh ]; then
  echo "Installing DVD Reader"
  sudo /usr/share/doc/libdvdread4/install-css.sh
fi
