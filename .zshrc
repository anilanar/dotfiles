source ~/.exports
source ~/.functions

skip_global_compinit=1
ZSH_THEME="anilanar"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git osx tmux)

ulimit -n 512

source $ZSH/oh-my-zsh.sh

bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history

bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char

bindkey '^w' backward-kill-word

bindkey '^r' history-incremental-search-backward

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

alias composer="php ~/Scripts/composer.phar"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# # RBENV: Ruby version switcher
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# docker - dinghy
eval $(docker-machine env pricesearch)
