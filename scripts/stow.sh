#!/bin/bash
printf 'Creating Symlinks w/ GNU Stow\n'
stow .

printf '\nCreating Symlink for tmux config\n'
ln -sf ~/.dotfiles/.config/tmux/.tmux.conf ~/.tmux.conf
