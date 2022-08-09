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

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#. `brew --prefix`/etc/profile.d/z.sh

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
