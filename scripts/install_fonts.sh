#!/bin/bash

FONTDIR="$HOME/.local/share/fonts/NerdFonts"

if [ ! -d $FONTDIR ]; then
    mkdir -p $FONTDIR
fi

curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/RobotoMono.zip
unzip -d $FONTDIR RobotoMono.zip
rm -f RobotoMono.zip
fc-cache -vf $FONTDIR
