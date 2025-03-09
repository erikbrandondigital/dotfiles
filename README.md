# About (Work In Progress)
This repo contains all my configuration dot files that I use everyday as a part of my developer workflow. The purpose of this repo is to make it easy to synchronize configuration changes across my devices using Git, GitHub, and GNU Stow. Embracing the Keep It Simple Stupid (KISS) design principle, all dot files are stored in a local directory and put into place using GNU Stow which essentially creates symlinks between each dot file in this repo and its intended path in the user's home directory. With this setup I am able to make changes to my configuration at a moments notice on any device, commit it to GitHub and pull down the config changes on any other device. Pretty simple, right?

## What Is Included?
Below is a list of all the applications, frameworks, and tools with config files included in this repo. If you want to try my config out on your machine, you will need to install these applications. Npiperelay is only necessary if you are on Windows Subsystem for Linux (WSL) and want to share SSH agent keys between the Windows and Linux hosts. I use it to access GitHub SSH keys in KeepassXC running on the Windows Host.

- [Git](https://git-scm.com)
- [Neovim](https://github.com/neovim/neovim) + [NvChad](https://github.com/NvChad/NvChad)
- [Node Version Manager (nvm)](https://github.com/nvm-sh/nvm)
- [npiperelay (Windows Subsystem for Linux (WSL) only)](https://github.com/jstarks/npiperelay)
- [Python Version Manager (pyenv)](https://github.com/pyenv/pyenv)
- [Starship](https://github.com/starship/starship)
- [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) + [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)

## To Dos
- [ ] Add install scripts for the required applications, frameworks & tools for:
  - [ ] Windows
  - [ ] MacOS (Homebrew / iTerm2)
  - [ ] Ubuntu/Debian Linux
  - [ ] Android (Termux)
- [ ] Add documentation describing each config file and chosen settings

# Requirements
1. Since I use ZSH with the Oh My ZSH framework you will need to install Zsh & Oh My Zsh. 
    - Follow this [Oh My Zsh Guide](https://github.com/ohmyzsh/ohmyzsh/wiki) to install Zsh & Oh My Zsh.
2. Install Git, GNU Stow, Neovim, NvChad, Node Version Manager (nvm), Python Version Manager (pyenv).

# Install
1. Clone this repo on your machine to a `.dotfiles` directory:
```
git clone https://github.com/erikbrandondigital/dotfiles.git ~/.dotfiles
```
2. In your terminal, navigate to the repo directory:
```
cd ~/.dotfiles
```
3. Run GNU Stow to create the symlinks for each application, framework or tool automatically.
```
stow .
```
4. Reload Zsh to reload all config files.
```
source ~/.zshrc
```

# Post-Install Checks
1. Run `nvim` to see if NvChad starts up.
2. Run `pyenv` to see if Python Version Manager (pyenv) starts up.
3. Run `nvm` to see if Node Version Manager (nvm) starts up.

# Uninstall / Cleanup
If you would like to uninstall my configuration and cleanup your machine, follow the steps below to remove the symlinks created by GNU Stow and delete the local copy of the repo. I'll leave the uninstallation of the other applications up to you.

1. In your terminal, navigate the repo directory:
```
cd ~/.dotfiles
```
2. Remove GNU Stow Symlinks from you home directory:
```
stow -D .
```
3. Remove the repo from your machine:
```
rm -rf ~/.dotfiles
```
