#!/bin/bash

curl -sL https://github.com/powerline/fonts/archive/master.zip -o master.zip
unzip master.zip
cd fonts-master
./install.sh
cd ..
rm -rf fonts-master master.zip
