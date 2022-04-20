# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#ZSH_THEME="af-magic"
ZSH_THEME="powerlevel10k/powerlevel10k"

#Mattia GitHub shortcut
alias add='git add .'
alias com='git commit -m'
alias gps='git push'
alias gpl='git pull'
alias sta='git status'
alias gck='git checkout'

export ZSH=~/.dotfiles/oh-my-zsh
source $ZSH/oh-my-zsh.sh

source ~/.dotfiles/oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#. `brew --prefix`/etc/profile.d/z.sh

# TMUX
export TERM="xterm-256color"
alias tmls='tmux ls'
alias tmat='tmux attach -t'
alias tmn='tmux new-session -s'
alias tmclose='tmux detach' # detach the current session leaving it open
alias tmkill='tmux kill-session -t'

# Audio Linux
alias audio='pavucontrol'

#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

#vi in bash
set -o vi

export PATH=~/.dotfiles/scripts:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/mattia/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mattia/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/mattia/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mattia/google-cloud-sdk/completion.zsh.inc'; fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
