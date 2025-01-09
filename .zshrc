# Set the directory we want to store Zinit and plugins in.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet.
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Load Zinit.
source "$ZINIT_HOME/zinit.zsh"

# Add in Zsh plugins.
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light nix-community/nix-zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets.
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::eza
zinit snippet OMZP::command-not-found

# Load completions.
autoload -Uz compinit && compinit

zinit cdreplay -q

# Completion styling.
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no

zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:complete:ls:*' fzf-preview 'cat $realpath'
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'

# Enable auto cd.
setopt auto_cd

# Aliases.
alias c='clear'
alias system='fastfetch'
alias eza='eza --icons always --git --group-directories-first --header'
alias tree='eza --tree'
alias sudo='sudo '

# Add Cargo binaries to PATH.
export PATH="$PATH:$HOME/.cargo/bin"

# Shell integrations.
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# Set up keybindings.
bindkey -e # Use Emacs bindings.
bindkey '^[[1;5C' emacs-forward-word
bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[3~' delete-char

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Enable history.
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups

# Initialize prompt.
source ~/.config/themes/headline.zsh-theme
