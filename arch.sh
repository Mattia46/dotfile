sudo pacman -S yarn
sudo pacman -S the_silver_searcher
sudo pacman -S xclip
sudo pacman -S gvim
sudo pacman -S gvim
sudo pacman -S curl

#zsh
sudo pacman -S zsh
chsh -s $(which zsh)
sudo curl -L http://install.ohmyz.sh | sh
cd ~/.oh-my-zsh && git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

#git
git config --global user.name "Mattia46"
git config --global user.email "mattia.assogna@gmail.com"
git config --global core.autocrlf input
git config --global core.safecrlf true

ssh-keygen -t rsa -b 4096 -C "mattia.assogna@gmail.com"
#PASSWORD
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub
#Paste key in github
ssh -T git@github.com
