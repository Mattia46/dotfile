ZSH_THEME="af-magic"

#Mattia GitHub shortcut
alias add='git add .'
alias com='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias sta='git status'
alias gck='git checkout'

alias vim='nvim'

export ZSH=~/.dotfiles/.oh-my-zsh
source $ZSH/oh-my-zsh.sh


# NVM
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  export NVM_DIR="${HOME}/.dotfiles/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
  export PATH=$PATH:~/.dotfiles/scripts
  source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

elif [[ "$OSTYPE" == "darwin"* ]]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
  [ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm"
  export PATH=$PATH:~/dotfile/scripts:/opt/homebrew/bin
  source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# TMUX
export TERM="xterm-256color"
alias tmls='tmux ls'
alias tmat='tmux attach -t'
alias tmn='tmux new-session -s'
alias tmkill='tmux kill-session -t'

#vi in bash
set -o vi

# AUTOCOMPLETION

# initialize autocompletion
autoload -U compinit && compinit
# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
