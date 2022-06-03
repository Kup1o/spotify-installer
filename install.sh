#!/bin/bash

method=0

echo -en "Write a number to choose an option for install Spotify Client\n"
echo -en "If you would like to install Spotify via Snap, write 1\n"
echo -en "If you would like to install Spotify via Apt, write 2: "
read method

case $method in 
  "1")
    if ["$method" == 1]; then
      echo -e "You have chosen snap method to install Spotify Client"
      sudo snap install spotify
      echo -e "Spotify was succesfully installed!"
    break
    else
      echo -en "Please specify 1 or 2 for choosing a method to install Spotify Client\n"
      echo -en "If you would like to install Spotify via Snap, write 1\n"
      echo -en "If you would like to install Spotify via Apt, write 2\n"
      echo -en "Now run install.sh again!\n"
    exit
    fi;;
  "2")
    if ["$method" == 2]; then
      echo -e "You have chosen repository method to install Spotify Client\n"
      sudo curl -fsSLo /usr/share/keyrings/spotify.gpg https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg
      echo "deb [signed-by=/usr/share/keyrings/spotify.gpg arch=amd64] http://repository.spotify.com stable non-free"|sudo tee /etc/apt/sources.list.d/spotify.list
      sudo apt update
      sudo apt install spotify-client -y
      clear
      echo -e "Spotify was succesfully installed!\n"
    break
    else
      echo -en "Please specify 1 or 2 for choosing a method to install Spotify Client\n"
      echo -en "If you would like to install Spotify via Snap, write 1\n"
      echo -en "If you would like to install Spotify via Apt, write 2\n"
      echo -en "Now run install.sh again!\n"
    exit
    fi
    break;;
esac

#done
#there is no tabs now