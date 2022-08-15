vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'rking/ag.vim'
  use 'tpope/vim-fugitive'
  use 'scrooloose/nerdtree'
  use 'xuyuanp/nerdtree-git-plugin'
  use 'scrooloose/nerdcommenter'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'ryanoasis/vim-devicons'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'ctrlpvim/ctrlp.vim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  -- syntax
  use 'maxmellon/vim-jsx-pretty'
  use 'jparise/vim-graphql'
  use 'leafgarland/typescript-vim'
  --use 'peitalin/vim-jsx-typescript'
end)
