echo -ne 'Selecting Optimal Package Mirror...\r'
termux-change-repo

# Install required software
echo -ne 'Updating Packages...\r'
pkg update && pkg upgrade -y

echo -ne 'Installing Required Packages...\r'
pkg install -y git neovim starship stow taskwarrior timewarrior wget zsh

# Install Oh My ZSH & Plugins
echo -ne 'Installing Oh My ZSH...\r'
curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | bash

echo -ne 'Installing Oh My ZSH Plugins...\r'
git clone --quiet https://github.com/Pilaton/OhMyZsh-full-autoupdate.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ohmyzsh-full-autoupdate
git clone --quiet https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --quiet https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Latest Node Version & Angular CLI
echo -ne 'Installing NodeJS LTS...\r'
pkg install -y nodejs-lts

# Install Pyenv & Latest Version 3.x.x
echo -ne 'Installing Pyenv...\r'
curl -fsSL https://pyenv.run | bash

# Getting Dotfiles
echo -ne 'Retrieving & Setting Up Dotfiles...\r'
rm -rf ~/.zshrc
git clone --quiet https://github.com/erikbrandondigital/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow .
cd ~

# Setup Nerdfont 
echo -ne 'Setting up Nerdfont...\r'
curl -fsSOL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.tar.xz
mkdir ~/FiraCode && tar -xf FiraCode.tar.xz -C ~/FiraCode
cd ~/FiraCode && cp FiraCodeNerdFont-Regular.ttf ~/.termux/font.ttf
cd ~ && rm -rf ~/FiraCode FiraCode.tar.xz

# Switch default shell to ZSH & Reload Config
echo -ne 'Switching Default Shell to ZSH & Reloading Zshrc...\r'
chsh -s zsh
termux-reload-settings

# Install Latest NodeJS & Python
echo -ne 'Installing latest NodeJS & Python...\r'
npm install -g @angular/cli
# pyenv install 3
