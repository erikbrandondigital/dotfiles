# Set Theme & Plugins
ZSH_Theme=""
plugins=(git mise nvm ohmyzsh-full-autoupdate starship sudo tmux zsh-autosuggestions zsh-syntax-highlighting web-search)

export ZSH="$HOME/.oh-my-zsh"
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST # Customize ZSH Completion Cache Location
export ZSH_AUTOSUGGEST_STRATEGY=(history completion) # Customize ZSH_AUTOSUGGEST_STRATEGY
export UPDATE_ZSH_DAYS=14 # Have ohmyzsh-full-autoupdate plugin check for updates every 14 days.
export ZSH_TMUX_AUTOSTART=true # Autostart TMUX in ZSH using Oh My ZSH plugin.
export ZSH_WEB_SEARCH_ENGINES=(claude "https://claude.ai/new?q=") # Add Claude to Oh-My-ZSH web-search plugin

source $ZSH/oh-my-zsh.sh

