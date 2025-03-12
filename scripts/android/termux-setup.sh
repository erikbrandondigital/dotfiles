#!/bin/bash
printf 'Selecting Optimal Package Mirror...'
termux-change-repo

# Install required software
printf 'Updating Packages...'
pkg update && pkg upgrade -y

printf 'Installing Required Packages...'
pkg install -y git neovim starship stow wget zsh

# Install Oh My ZSH & Plugins
printf 'Installing Oh My ZSH...'
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

printf 'Installing Oh My ZSH Plugins...'
git clone --quiet https://github.com/Pilaton/OhMyZsh-full-autoupdate.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ohmyzsh-full-autoupdate
git clone --quiet https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Latest Node Version & Angular CLI
printf 'Installing NodeJS LTS...'
pkg install -y nodejs-lts

# Install Pyenv & Latest Version 3.x.x
printf 'Installing Pyenv...'
curl -fsSL https://pyenv.run | bash

# Getting Dotfiles
printf 'Retrieving & Setting Up Dotfiles...'
rm -rf ~/.zshrc
cd ~/.dotfiles
./scripts/stow.sh
cd ~

# Setup Nerdfont
printf 'Setting up Nerdfont...'
curl -fsSOL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.tar.xz
mkdir ~/FiraCode && tar -xf FiraCode.tar.xz -C ~/FiraCode
cd ~/FiraCode && cp FiraCodeNerdFont-Regular.ttf ~/.termux/font.ttf
cd ~ && rm -rf ~/FiraCode FiraCode.tar.xz

# Switch default shell to ZSH & Reload Config
printf 'Switching Default Shell to ZSH & Reloading Zshrc...'
chsh -s zsh
termux-reload-settings

# Install Latest NodeJS & Python
printf 'Installing latest NodeJS & Python...'
npm install -g @angular/cli
# pyenv install 3
