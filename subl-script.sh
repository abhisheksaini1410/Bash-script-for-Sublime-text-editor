#!/bin/bash

if [[ $(id -u) != 0 ]]; then
    echo -e "\n[!] Requires root privileges"
    exit 0
fi
echo "updating!"

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo"Downloading Complete!"
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
echo "start Updateing System"
sudo apt-get update
echo "Start Installing Submile-text!"
sudo apt-get install sublime-text
echo "Everything Ready to work!"
