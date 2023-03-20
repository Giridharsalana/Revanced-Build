#!/bin/bash
test -d Revanced && rm -rf Revanced
mkdir Revanced 
cd Revanced
wget https://raw.githubusercontent.com/XDream8/revanced-creator/main/patch.sh
chmod +x patch.sh
export additional_args="-e return-youtube-dislike"
./patch.sh
cp *-non-root.apk ../revanced.apk
rm -rf ../Revanced
