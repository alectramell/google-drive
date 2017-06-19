#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

rm google-drive.zip

clear

zip -r google-drive.zip *.html *.json img js fonts

clear

echo "DONE!" | pv -qL 10
