#!/bin/bash

cp -u ~/.zshrc .
cp -u ~/.Xresources .
cp -u ~/.xinitrc .

cd .config
cp -u -r ~/.config/i3 .
cp -u -r ~/.config/i3blocks .
cp -u -r ~/.config/bin .
cp -u -r ~/.config/rofi .
cp -u -r ~/.config/ranger .



