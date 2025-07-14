# Reload ZSH Config
alias zsh-reload="source ~/.zshrc"
alias zsh-clear-history="history -p"

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

# Replace cat with bat (bat on Mac OS & batcat on Ubuntu/Debian Linux)
if command -v bat >/dev/null 2>&1; then
  alias cat='bat --paging=never'
else
  alias cat='batcat --paging=never'
fi
