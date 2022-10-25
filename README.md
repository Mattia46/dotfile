# vimDotfile


#### Package to install for LSP
```bash
npm install -g typescript typescript-language-server

```
```
git clone git@github.com:Mattia46/.vim.git
ln -s dotfile/vimrc ~/.vimrc # vim config no longer used
ln -s dotfile/nvim ~/.config/ # Nvim config
# For nvim you have to install the executable first
ln -s dotfile/zshrc ~/.zshrc
ln -s dotfile/gitconfig ~/.gitconfig
ln -s dotfile/gitconfig-personal ~/.gitconfig-personal
ln -s dotfile/gitconfig-work ~/.gitconfig-work
ln -s dotfile/gitignore ~/.gitignore
ln -s dotfile/agignore ~/.agignore
ln -s dotfile/tmux.conf ~/.tmux.conf
ln -s dotfile/vim ~/.vim

# Only for Linux machine
ln -s dotfile/wallpaper ~/.wallpaper
ln -s dotfile/xinitrc ~/.xinitrc
ln -s dotfile/Xmodmap ~/.Xmodmap
```

Install dependencies
```bash
nvim
:PackerInstall
```

Install font with icons

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```
