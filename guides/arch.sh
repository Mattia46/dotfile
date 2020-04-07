sudo pacman -S the_silver_searcher xclip gvim curl ranger
sudo pacman -S w3m # Image preview for ranger
sudo pacman -S bluez bluez-utils pulseaudio-bluetooth blueman # Blueman: is a bluetooth manager. Run it with blueman-applet

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

# clone dotfile
git clone git@github.com:Mattia46/dotfile.git ~

# links
ln -s ~/dotfile/vimrc ~/.vimrc
ln -s ~/dotfile/zshrc ~/.zshrc
ln -s ~/dotfile/gitconfig ~/.gitconfig
ln -s ~/dotfile/gitignore ~/.gitignore
ln -s ~/dotfile/tmux.conf ~/.tmux.conf
ln -s ~/dotfile/vim ~/.vim
ln -s ~/dotfile/wallpaper ~/.wallpaper
ln -s ~/dotfile/xinitrc ~/.xinitrc # if DMG ~/.xsession
ln -s ~/dotfile/Xmodmap ~/.Xmodmap
ln -s ~/dotfile/ranger.conf ~/.config/ranger/rc.conf
ln -s ~/dotfile/i3config ~/.config/i3/config
ln -s ~/dotfile/i3blocks ~/.config/i3blocks/config

