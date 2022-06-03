#!/bin/bash

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo gpg --dearmour -o /usr/share/keyrings/spotify.gpg

echo "deb [signed-by=/usr/share/keyrings/spotify.gpg arch=amd64] http://repository.spotify.com stable non-free"| sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update

sudo apt install spotify-client -y