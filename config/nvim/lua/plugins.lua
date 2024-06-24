vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'Mofiqul/dracula.nvim'
  use 'morhetz/gruvbox'
  use 'rking/ag.vim'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  -- use 'scrooloose/nerdtree'
  use 'xuyuanp/nerdtree-git-plugin'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  -- use 'ryanoasis/vim-devicons'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  }
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'ctrlpvim/ctrlp.vim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-treesitter/nvim-treesitter'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'maxmellon/vim-jsx-pretty'
  use 'jparise/vim-graphql'
  use 'leafgarland/typescript-vim'
end)
