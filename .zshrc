export LANG=en_US.UTF-8
export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="avit"
COMPLETION_WAITING_DOTS="true"
DISABLE_CORRECTION="true"
DISABLE_AUTO_UPDATE="true"
plugins=(git autojump autoenv brew osx npm)
source $ZSH/oh-my-zsh.sh
source ~/Userlike/env/bin/activate
bindkey -v

export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# This loads nvm bash_completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# clipboard fix
source "$HOME/.zsh/plugins/zsh-system-clipboard/zsh-system-clipboard.zsh"

# fzf, ripgrep
export FZF_DEFAULT_COMMAND='rg --files --hidden'

export PATH=$PATH:$HOME/scripts

# nix
. /Users/anilanar/.nix-profile/etc/profile.d/nix.sh
