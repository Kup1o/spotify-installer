#!/bin/bash

echo -en "Write a number to choose an option for install Spotify Client\n"
echo -en "If you would like to install Spotify via Snap, write 1\n"
echo -en "If you would like to install Spotify via Apt, write 2: "
read method

while [-n $method]; do

case $method in 
  "1")
    if [$(method)==1]; then
      echo -e 'You have chosen snap method to install Spotify Client'
      sudo snap install spotify
    break
    else
      echo -en "Please specify 1 or 2 for choosing a method to install Spotify Client"
      echo -en "If you would like to install Spotify via Snap, write 1"
      echo -en "If you would like to install Spotify via Apt, write 2"
    exit
    fi;;
  "2")
    if [$(method)==2]; then
      echo -e 'You have chosen repository method to install Spotify Client'
      sudo curl -fsSLo /usr/share/keyrings/spotify.gpg https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg
      echo "deb [signed-by=/usr/share/keyrings/spotify.gpg arch=amd64] http://repository.spotify.com stable non-free"|sudo tee /etc/apt/sources.list.d/spotify.list
      sudo apt update
      sudo apt install spotify-client -y
    break
    else
      echo -en 'Please specify 1 or 2 for choosing a method to install Spotify Client'
      echo -en "If you would like to install Spotify via Snap, write 1"
      echo -en "If you would like to install Spotify via Apt, write 2"
    exit
    fi
    break;;
esac

#done
#there is no tabs now