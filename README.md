# Installing Spotify Client on Debian 11 & Ubuntu 22.04 and above

As far as you might know in Debian 11 & Ubuntu 22.04 apt-key has become *a deprecated apt key management utility*. What does it mean? It actually means that apt-key won't be used in Debian 12 & Ubuntu 22.10 and above. So we do need use another utility then.

I think this repository won't be needed since Spotify will have updated their [Spotify for Linux Guide](https://www.spotify.com/fr/download/linux).
But we need this guide RIGHT NOW!

So there we go. The bash script does the thing. It uses a gpt utility instead of an old one apt-key. To install Spotify Client you can copy code below or use bash script called install.sh in the repository.

## Install Spotify Client via Snap

```console
sudo snap install spotify
```

## Install Spotify Client via Spotify Repository

```console
sudo curl -fsSLo /usr/share/keyrings/spotify.gpg https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg

echo "deb [signed-by=/usr/share/keyrings/spotify.gpg arch=amd64] http://repository.spotify.com stable non-free"|sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update

sudo apt install spotify-client -y
```
