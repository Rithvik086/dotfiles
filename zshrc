# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2

# Apply dircolors settings
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert'
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Customize colors for syntax highlighting
typeset -A ZSH_HIGHLIGHT_STYLES

# Main command colors
ZSH_HIGHLIGHT_STYLES[command]='fg=#89b4fa,bold'          # Bright blue, bold
ZSH_HIGHLIGHT_STYLES[alias]='fg=#89b4fa,bold'           # Same bright blue
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#cba6f7,bold'         # Bright purple
ZSH_HIGHLIGHT_STYLES[function]='fg=#f5c2e7,bold'        # Pink

# Arguments and paths
ZSH_HIGHLIGHT_STYLES[path]='fg=#fab387'                 # Peach/Orange
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#fab387'          # Peach/Orange
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#f9e2af' # Yellow
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#f9e2af' # Yellow

# Strings and special elements
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#a6e3a1' # Green
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#a6e3a1' # Green
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#f38ba8'         # Red

eval "$(oh-my-posh --init --shell zsh --config ~/.M35.omp.json)"


# Initialize oh-my-posh with custom configuration
eval "$(oh-my-posh --init --shell zsh --config ~/.M35.omp.json)"

# Alias for ls to always use color output
alias ls='ls --color=auto'
export PATH="$PATH:/opt/nvim-linux64/bin"
export LANG=en_IN.UTF-8
export LANGUAGE=en_IN:en
export LC_ALL=en_IN.UTF-8
export PATH="$PATH:/home/lightshadow/pseudoD/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
setopt NO_BEEP

# Created by `pipx` on 2024-12-24 18:05:51
export PATH="$PATH:/home/lightshadow/.local/bin"



export PATH=$PATH:/home/lightshadow/.spicetify
export PATH=/usr/local/nodejs/bin:$PATH
