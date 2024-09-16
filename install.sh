#!/bin/bash
read -rp "Install hyprland? (Yes/No): " hyprland
if [ hyprland=yes ]; then
	paru -S alacritty neovim hyprland hyprpaper hyprlock hypridle ags daart-sass ttf-material-symbols-variable-git fuzzel
	cp -rf .config/hypr $HOME/.config/
	cp -rf .config/ags $HOME/.config/
	cp -rf .config/fuzzel $HOME/.config/
	cp -rf .local/bin/fuzzel-emoji $HOME/.local/bin/
else
	cp -rf .config/nvim $HOME/.config/
	cp -rf .config/alacritty $HOME/.config/
	cp -rf .zsh $HOME/.zsh
	cp -rf .zshrc $HOME/
fi
echo "Copying Files..."
read -rp "Enter type of installation native or flatpak? (native/flatpak): " install_type
if [ install_type=native ]; then
	cp -rf mpv $HOME/.config/
else  
	cp -rf mpv $HOME/.var/app/io.mpv.Mpv/config/mpv/
fi
echo "Done"
