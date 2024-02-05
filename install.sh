#!/bin/bash
echo "Copying Files..."
cp -r alacritty $HOME/.config/
cp -r nvim $HOME/.config/
read -rp "Enter type of installation native or flatpak? (native/flatpak): " install_type
if [ install_type=native ]; then
	cp -r mpv $HOME/.config/
else  
	cp -r mpv $HOME/.var/app/io.mpv.Mpv/config/mpv/
fi
echo "Done"
