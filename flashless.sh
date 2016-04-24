#!bin/bash
#Title: Flashless Restricted Extras Installer for Ubuntu
#Description: Installs patent encumbered audio and video codecs
#Author: Quidsup
#Date: 24 Apr 2016
#Usage: bash flashless-extras.sh

if [ "$(command -v apt-get)" ]; then        #Is this an Ubuntu / Debian based distro?
  if [[ $(pgrep kwin) != "" ]]; then        #Different set of packages are needed for KDE based systems
    echo "Installing Restricted Extras for KDE based system"
    sudo apt-get install synaptic oxygen-cursor-theme oxygen-cursor-theme-extra lame unrar gstreamer1.0-fluendo-mp3 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-fluendo-mp3 libdvdread4 libk3b6-extracodecs  oxideqt-codecs-extra libavcodec-extra libavcodec-ffmpeg-extra56 libk3b6-extracodecs
  else
    echo "Installing Restricted Extras"
    sudo apt-get install synaptic oxygen-cursor-theme oxygen-cursor-theme-extra lame unrar gstreamer1.0-fluendo-mp3 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-fluendo-mp3 libdvdread4 libk3b6-extracodecs  oxideqt-codecs-extra libavcodec-extra libavcodec-ffmpeg-extra56
  fi
else                                        #Throw error for non Deb systems
  echo "Error: Flashless Extras is only written for Debian based systems"
  exit 1
fi

if [ -e /usr/share/doc/libdvdread4/install-css.sh ]; then
  echo "Installing DVD Reader"
  sudo /usr/share/doc/libdvdread4/install-css.sh
fi
