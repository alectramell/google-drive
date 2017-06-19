#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

rm google-drive.zip

clear

zip -r google-drive.zip *.html *.json img js fonts

clear

touch /home/$(whoami)/Desktop/google-drive.desktop

clear

echo "[Desktop Entry]" > /home/$(whoami)/Desktop/google-drive.desktop
echo "Name=Google Drive" >> /home/$(whoami)/Desktop/google-drive.desktop
echo "Type=Application" >> /home/$(whoami)/Desktop/google-drive.desktop
echo "Icon=/home/$(whoami)/Desktop/google-drive/img/googledrive.svg" >> /home/$(whoami)/Desktop/google-drive.desktop
echo "Exec=sensible-browser --new-tab='file:///home/$(whoami)/Desktop/google-drive/index.html'" >> /home/$(whoami)/Desktop/google-drive.desktop
echo "Terminal=false" >> /home/$(whoami)/Desktop/google-drive.desktop

clear

chmod 755 /home/$(whoami)/Desktop/google-drive.desktop

clear

echo "DONE!" | pv -qL 10


