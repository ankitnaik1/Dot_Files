#!/bin/bash
echo "Copying Files..."
paru -S alacritty neovim hyprland hyprpaper hyprlock hypridle ags daart-sass ttf-material-symbols-variable-git fuzzel
cp -rf .config/alacritty $HOME/.config/
cp -rf .config/nvim $HOME/.config/
cp -rf .config/hypr $HOME/.config/
cp -rf .config/ags $HOME/.config/
cp -rf .config/fuzzel $HOME/.config/
cp -rf .local/bin/fuzzel-emoji $HOME/.local/bin/
read -rp "Enter type of installation native or flatpak? (native/flatpak): " install_type
if [ install_type=native ]; then
	cp -rf mpv $HOME/.config/
else  
	cp -rf mpv $HOME/.var/app/io.mpv.Mpv/config/mpv/
fi
echo "Done"
