#!/bin/bash
printf 'Removing Symlinks w/ GNU Stow\n'
stow -D .

printf '\nRemoving Symlink for tmux config\n'
unlink ~/.tmux.conf
