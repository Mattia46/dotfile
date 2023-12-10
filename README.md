# Dotfiles


#### Package to install for LSP
```bash
npm install -g typescript typescript-language-server
```

### Pkg to install
zsh tmux curl git nvim xclip firefox rofi rofi-calc rofi-emoji nitrogen lsusb-utils bluez bluez-utils man-db tldr lightdm lightdm-gtk-greeter i3lock


#### Customisation

```
sudo apt install materia-gtk-theme papirus-icon-theme lxappearance

# Transparent terminal Picom
sudo pacman -S picom
```

```
git clone https://github.com/Mattia46/dotfile.git
```

# Nvim
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

ln -s ~/.dotfiles/nvim ~/.config/ # Nvim config

# then install pkgs
nvim
:PackerInstall
```

### Commons
```
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitconfig-personal ~/.gitconfig-personal
ln -s ~/.dotfiles/gitconfig-work ~/.gitconfig-work
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/agignore ~/.agignore
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
```

#### Zsh plugins
```
cd ~/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

```

## Linux

```
ln -s ~/.dotfiles/wallpaper ~/.wallpaper
ln -s ~/.dotfiles/xinitrc ~/.xinitrc
ln -s ~/.dotfiles/Xmodmap ~/.Xmodmap
ln -s ~/.dotfiles/Xresouces ~/.Xresources
ln -s ~/.dotfiles/xinitrc ~/.xinitrc

mkdir ~/.config/i3blocks
ln -s ~/.dotfiles/i3blocks ~/.config/i3blocks/config
```

#### Enable LightDM login

```
sudo systemctl enable --now lightdm.service
```

### Bluetooth and Audio

```
sudo pacman -S bluez bluez-utils
systemctl enable --now bluetooth.service

# Audio
# Arch already installs all services for PipeWire

sudo pacman -S pavucontrol # Audio controller GUI
sudo pacman -S blueman # Bluetooth applet
```

### i3-wm config
```
rm ~/.config/i3/config
ln -s ~/.dotfiles/i3config ~/.config/i3/config
```

### Fonts

```
ln -s ~/.dotfiles/fonts /usr/local/share/
fc-cache -vf

fc-list # should show the new fonts
```

## MAC
#### Install font with icons

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```


