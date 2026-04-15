# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export TERMINFO_DIRS=$TERMINFO_DIRS:/.local/share/terminfo

plugins=(git)
source $ZSH/oh-my-zsh.sh

# Vim keybindings
bindkey -v
export KEYTIMEOUT=1


alias ls='lsd'
alias k='kubectl'
alias nv='nvim'
alias sav='source .venv/bin/activate'
alias tf='terraform'
alias nvrc="nvim ~/dotfiles/nvim/.config/nvim/init.lua"
alias cdnv='cd ~/dotfiles/nvim/.config/nvim/'


eval export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
fpath[1,0]="/opt/homebrew/share/zsh/site-functions";
PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin"; export PATH;
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

export PATH="/Users/trevorwise/.codeium/windsurf/bin:$PATH"
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"

export KUBE_EDITOR="nvim"

eval "$(starship init zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/bin:$PATH"

. "$HOME/.local/bin/env"

# pnpm
export PNPM_HOME="/Users/trevorwise/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
