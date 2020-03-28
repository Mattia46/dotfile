[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[ -f ~/.xprofile ] && . ~/.xprofile

eval "$(ssh-agent)"
feh --randomize --bg-fill ~/.wallpaper/
