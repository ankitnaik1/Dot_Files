#!/bin/bash
read -rp "Install hyprland? (Y/N): " hyprland
if [ "$hyprland" = "Y" ]; then
	paru -S alacritty neovim hyprland hyprpaper hyprlock hypridle ags daart-sass ttf-material-symbols-variable-git fuzzel
	cp -rf config/hypr $HOME/.config/
	cp -rf config/ags $HOME/.config/
	cp -rf config/fuzzel $HOME/.config/
	cp -rf .local/bin/fuzzel-emoji $HOME/.local/bin/
else
	echo "Not Installing hyprland"
fi
cp -rf config/nvim $HOME/.config/
cp -rf config/alacritty $HOME/.config/
cp -rf zsh $HOME/.
cp -rf zsh/zshrc $HOME/.zshrc
paru -S starship
echo "Copying Files..."
read -rp "Enter type of installation native or flatpak? (native/flatpak): " install_type
if [ "install_type" = "native" ]; then
	cp -rf config/mpv $HOME/.config/
	cp -rf config/chromium-flags.conf $HOME/.config/
else  
	cp -rf config/mpv $HOME/.var/app/io.mpv.Mpv/config/
	cp -rf config/chromium-flags.conf $HOME/.var/app/io.github.ungoogled_software.ungoogled_chromium/config/
fi
echo "Done"
