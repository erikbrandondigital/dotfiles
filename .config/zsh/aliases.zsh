# Reload ZSH Config
alias reload-zsh="source ~/.zshrc"

# Config-related Shortcuts
alias config-zsh="nvim ~/.zshrc"
alias config-nvim="cd ~/.config/nvim/ && nvim ."
alias config-dotfiles="cd ~/.dotfiles && nvim ."

# Update-related
alias update-apt="sudo apt update && sudo apt upgrade"
alias update-brew="brew update && brew upgrade"
alias update-omz="omz update"
alias update-pyenv="pyenv update"

# Stow/Unstow Dotfiles
alias dotfiles-stow="cd ~/.dotfiles && stow ."
alias dotfiles-unstow="cd ~/.dotfiles && stow -D ."

