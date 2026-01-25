# About My Dotfiles

This repo contains all my configuration dot files that I use everyday as a part of my developer workflow. The purpose of this repo is to make it easy to synchronize configuration changes across my devices using Git, GitHub, and GNU Stow.

Embracing the Keep It Simple Stupid (KISS) design principle, all dot files are stored in a local directory and moved into place using GNU Stow which creates symlinks between each dot file in this repo and its intended path in the user's home directory.

With this setup I am able to make changes to my configuration at a moments notice on any device, commit it to GitHub and pull down the config changes on any other device. Pretty simple, right?

## What Is Included?

Below is a list of all the applications, frameworks, programming languages, and tools with config files included in this repo. If you want to try my config out on your machine, you will need to install these applications. But don't worry most of them are installed by Mise-en-place and other package managers.

Note: Npiperelay is only necessary if you are on Windows Subsystem for Linux (WSL) and want to share SSH agent keys between the Windows and Linux hosts. I use it to access GitHub SSH keys in KeepassXC running on the Windows Host.

> [!NOTE]
> Indented bullets represent plugins listed underneath their parent software that will be installed by a package manager. (Examples: Tmux Plugin Manager (TPM), Lazy, Oh My Zsh)

| Programming Languages                 | Installed by Mise |
| ------------------------------------- | :---------------: |
| [NodeJS](https://nodejs.org/en)       |        ✅         |
| [Python](https://www.python.org)      |        ✅         |
| [Ruby](https://www.ruby-lang.org/en/) |        ✅         |
| [Rust](https://rust-lang.org)         |        ✅         |

| Tools & Utilities                                                                            | Installed by Mise | Installed by Lazy | Installed by TPM | Installed by Oh My ZSH |
| -------------------------------------------------------------------------------------------- | :---------------: | :---------------: | :--------------: | :--------------------: |
| [Bat](https://github.com/sharkdp/bat)                                                        |        ✅         |                   |                  |                        |
| [Ffmpeg](https://www.ffmpeg.org)                                                             |        ✅         |                   |                  |                        |
| [GH](https://github.com/cli/cli)                                                             |        ✅         |                   |                  |                        |
| [Git](https://git-scm.com)                                                                   |                   |                   |                  |                        |
| [GNU Stow](https://www.gnu.org/software/stow/)                                               |                   |                   |                  |                        |
| [LazyDocker](https://github.com/jesseduffield/lazydocker)                                    |        ✅         |                   |                  |                        |
| [LazyGit](https://github.com/jesseduffield/lazygit)                                          |        ✅         |                   |                  |                        |
| [Lnav](https://github.com/tstack/lnav)                                                       |        ✅         |                   |                  |                        |
| [Mise](https://github.com/jdx/mise)                                                          |                   |                   |                  |                        |
| [Neovim](https://github.com/neovim/neovim)                                                   |        ✅         |                   |                  |                        |
| - [NvChad](https://github.com/NvChad/NvChad)                                                 |                   |        ✅         |                  |                        |
| - [Auto Session](https://github.com/rmagatti/auto-session)                                   |                   |        ✅         |                  |                        |
| - [Conform](https://github.com/stevearc/conform.nvim)                                        |                   |        ✅         |                  |                        |
| - [Hardtime Nvim](https://github.com/m4xshen/hardtime.nvim)                                  |                   |        ✅         |                  |                        |
| - [Lazygit Nvim](https://github.com/kdheepak/lazygit.nvim)                                   |                   |        ✅         |                  |                        |
| - [Neoscroll](https://github.com/karb94/neoscroll.nvim)                                      |                   |        ✅         |                  |                        |
| - [Nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                                 |                   |        ✅         |                  |                        |
| - [Nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)                                    |                   |        ✅         |                  |                        |
| - [Nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                      |                   |        ✅         |                  |                        |
| - [Octo-nvim](https://github.com/pwntester/octo.nvim)                                        |                   |        ✅         |                  |                        |
| - [Precognition-nvim](https://github.com/tris203/precognition.nvim)                          |                   |        ✅         |                  |                        |
| - [Smear-cursor](https://github.com/sphamba/smear-cursor.nvim)                               |                   |        ✅         |                  |                        |
| - [Telescope-ui-select](https://github.com/nvim-telescope/telescope-ui-select.nvim)          |                   |        ✅         |                  |                        |
| - [Typr](https://github.com/nvzone/typr)                                                     |                   |        ✅         |                  |                        |
| - [Vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)                    |                   |        ✅         |                  |                        |
| [npiperelay (Windows Subsystem for Linux (WSL) only)](https://github.com/jstarks/npiperelay) |                   |                   |                  |                        |
| [Ripgrep](https://github.com/BurntSushi/ripgrep)                                             |        ✅         |                   |                  |                        |
| [Starship](https://github.com/starship/starship)                                             |        ✅         |                   |                  |                        |
| [Tmux](https://github.com/tmux/tmux)                                                         |        ✅         |                   |                  |                        |
| - [Tmux Plugin Manager (TPM)](https://github.com/tmux-plugins/tpm)                           |                   |                   |        ✅        |                        |
| - [Minimal Tmux Status](https://github.com/niksingh710/minimal-tmux-status)                  |                   |                   |        ✅        |                        |
| - [Tmux Resurrect](https://github.com/tmux-plugins/tmux-resurrect)                           |                   |                   |        ✅        |                        |
| - [Vim Tmux Navigator](https://github.com/christoomey/vim-tmux-navigator)                    |                   |                   |        ✅        |                        |
| [UV](https://github.com/astral-sh/uv)                                                        |        ✅         |                   |                  |                        |
| [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)                                |                   |                   |                  |                        |
| - [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)                                            |                   |                   |                  |                        |
| - - [git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)                        |                   |                   |                  |           ✅           |
| - - [mise](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/mise)                      |                   |                   |                  |           ✅           |
| - - [ohmyzsh-full-autoupdate](https://github.com/Pilaton/OhMyZsh-full-autoupdate)            |                   |                   |                  |                        |
| - - [starship](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/starship)              |                   |                   |                  |           ✅           |
| - - [sudo](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/sudo)                      |                   |                   |                  |           ✅           |
| - - [tmux](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux)                      |                   |                   |                  |           ✅           |
| - - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)                  |                   |                   |                  |                        |
| - - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)          |                   |                   |                  |                        |
| - - [web-search](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search)          |                   |                   |                  |           ✅           |

## To Dos

- [ ] Add install scripts for the required applications, frameworks & tools for:
  - [ ] MacOS (Homebrew / iTerm2)
  - [ ] Linux (Ubuntu / Debian / WSL)
  - [x] Android (Termux)

# Requirements

1. Since I use ZSH with the Oh My ZSH framework you will need to install Zsh & Oh My Zsh.
   - Follow this [Oh My Zsh Guide](https://github.com/ohmyzsh/ohmyzsh/wiki) to install Zsh & Oh My Zsh.
2. Install Git, GNU Stow, Clangd, and Mise-en-place.

# Install

1. Clone this repo on your machine to a `.dotfiles` directory:

```
git clone https://github.com/erikbrandondigital/dotfiles.git ~/.dotfiles
```

2. In your terminal, navigate to the repo directory:

```
cd ~/.dotfiles
```

3. Create a `.gitconfig.user` file in the `.dotfiles` directory and configure your `[user]` settings by running a script.

```
bash ./scripts/git-user-setup.sh
```

4. Run GNU Stow to create the symlinks for each application, framework or tool automatically.

```
stow .
```

5. Reload Zsh to reload all config files.

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

2. Remove GNU Stow Symlinks from your home directory:

```
stow -D .
```

3. Remove the repo local copy from your machine:

```
rm -rf ~/.dotfiles
```
