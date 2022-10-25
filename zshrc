ZSH_THEME="af-magic"

#Mattia GitHub shortcut
alias add='git add .'
alias com='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias sta='git status'
alias gck='git checkout'

alias vim='nvim'

export ZSH=~/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# TMUX
export TERM="xterm-256color"
alias tmls='tmux ls'
alias tmat='tmux attach -t'
alias tmn='tmux new-session -s'
alias tmclose='tmux detach' # detach the current session leaving it open
alias tmkill='tmux kill-session -t'

#vi in bash
set -o vi

export PATH=$PATH:~/dotfile/scripts:/opt/homebrew/bin
