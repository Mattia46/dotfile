sudo pacman -S the_silver_searcher
sudo pacman -S xclip
sudo pacman -S gvim
sudo pacman -S gvim
sudo pacman -S curl

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

# links
ln -s dotfile/vimrc ~/.vimrc
ln -s dotfile/zshrc ~/.zshrc
ln -s dotfile/gitconfig ~/.gitconfig
ln -s dotfile/gitignore ~/.gitignore
ln -s dotfile/tmux-conf ~/.tmux-conf
ln -s dotfile/vim ~/.vim
ln -s dotfile/wallpaper ~/.wallpaper
ln -s dotfile/xinitrc ~/.xinitrc
ln -s dotfile/Xmodmap ~/.Xmodmap

