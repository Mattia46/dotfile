sudo pacman -S the_silver_searcher xclip gvim curl ranger
sudo pacman -S w3m # Image preview for ranger
sudo pacman -S bluez bluez-utils pulseaudio-bluetooth blueman # Blueman: is a bluetooth manager. Run it with blueman-applet

# Fonts
# Location: /usr/share/fonts | ~/.local/share/fonts | /usr/local/share/fonts
# tools: fc-cache -f (clear cache) | fc-list (list of fonts installed) | fc-match --verbose
# FONT_NAME

# Terminal
sudo pacman -S alacritty

# Brightness adjustment
sudo pacman -S redshit

# Picom => transparency etc
sudo pacman -S picom

# Rofi, emoji, calc and icons theme
# To load new fonts run lc-cache -fv then restart
sudo pacman -S noto-fonts-emoji # emoji
sudo pacman -S rofi rofi-emoji papirus-icon-theme rofi-calc

# Screenshot
sudo pacman -S scrot

# notification
sudo pacman -S dunst

# for i3
# Install raw arch, desktop => i3
# cifs-utils // to mount the shares
# rofi // app loader
# bumblee-status // already in .dotfiles repo
# awesome-terminal-fonts // awesome 4 icon needed by bumblebee-status

# Python and PIP (for bumblebee-status)
# Install pip => sudo pacman -S python-pip
# Install pip dependency => python3 -m pip install MODULE
# To check missing module run => ./bumblebee-status --debug -m MODULE_NAME

# zsh
sudo pacman -S zsh
chsh -s $(which zsh)
sudo curl -L http://install.ohmyz.sh | sh
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

# ssh
ssh-keygen -t rsa -b 4096 -C "mattia.assogna@gmail.com"
#PASSWORD
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
#Paste key in github
ssh -T git@github.com

# Vari
sudo pacman -S xsel # enable copy paste in Tmux

# clone .dotfiles
git clone git@github.com:Mattia46/dotfile.git ~

# links
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/wallpaper ~/.wallpaper
ln -s ~/.dotfiles/xinitrc ~/.xinitrc # if DMG ~/.xsession
ln -s ~/.dotfiles/Xmodmap ~/.Xmodmap
ln -s ~/.dotfiles/ranger.conf ~/.config/ranger/rc.conf
ln -s ~/.dotfiles/i3config ~/.config/i3/config
ln -s ~/.dotfiles/i3blocks ~/.config/i3blocks/config

