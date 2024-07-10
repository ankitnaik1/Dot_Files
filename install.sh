#!/bin/bash
echo "Copying Files..."
paru -S alacritty neovim hyprland hyprpaper hyprlock hypridle ags daart-sass ttf-material-symbols-variable-git
cp -rf alacritty $HOME/.config/
cp -rf nvim $HOME/.config/
cp -rf hypr $HOME/.config/
cp -rf ags $HOME/.config/
read -rp "Enter type of installation native or flatpak? (native/flatpak): " install_type
if [ install_type=native ]; then
	cp -rf mpv $HOME/.config/
else  
	cp -rf mpv $HOME/.var/app/io.mpv.Mpv/config/mpv/
fi
echo "Done"
