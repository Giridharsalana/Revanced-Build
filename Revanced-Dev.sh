#!/bin/bash

mkdir Revanced 

cd Revanced

wget https://raw.githubusercontent.com/XDream8/revanced-creator/main/patch.sh

chmod +x patch.sh

#export additional_args="-i enable-wide-searchbar -e hide-shorts-button -e disable-create-button -e hide-cast-button -e hide-autoplay-button -e disable-fullscreen-panels -e old-quality-layout -e hide-infocard-suggestions -e enable-wide-searchbar"

export additional_args="-e return-youtube-dislike"

sudo apt update && sudo apt upgrade -y

sudo apt install openjdk-17-jdk openjdk-17-jre -y 

./patch.sh

cp *-non-root.apk ../revanced.apk

rm -rf ../Revanced
