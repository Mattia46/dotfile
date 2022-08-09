let mapleader = ","

set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands
set laststatus=2  " Always shows the status line at the bottom
set history=50
set incsearch     " do incremental searching
set colorcolumn=+1
set wildmenu
set textwidth=100
set relativenumber
set number
set backspace=2   " Backspace deletes like most programs in insert mode
set nowritebackup

"INDENTATION
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Reload the file is modified or :e
au FocusGained,BufEnter * :checktime
set autoread

" PLUGINS
lua require('plugins')
lua require('config.lspconfig')

"SEARCH
let g:ackprg = 'ag --vimgrep'

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

"Search the word under the cursor or with K
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>
"END SEARCH

"clipboard per copiare da vim ed incollare altrove:
if ($uname == 'Linux')
  set clipboard=unnamedplus
else
  set clipboard=unnamed
endif

"Fugitive map
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gb :Git Blame<CR>
nnoremap <leader>gd :Gvdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gm :diffget //2<CR>
nnoremap <leader>go :diffget //3<CR>
nnoremap <leader>gu :diffupdate<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :Glog -- % copen<CR>

"Shows the branch name for each version
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P


" Nerdtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.git','\.DS_Store','\.pdf', 'node_modules']
let NERDTreeHighlightCursorline = 1
let NERDTreeShowHidden=1

" JJ escape
inoremap jj <ESC>:wa<CR>

" Format to JSON, require jq
map <Leader>mn :%!jq .<CR>

" such very magic
:nnoremap / /\v
:cnoremap %s/ %s/\v

"Move between windows
nnoremap <Tab> <C-W><C-W>

" Indentation
noremap <Leader>i gg=G

"COLORSCHEME
colorscheme dracula

set path+=**

autocmd BufWritePre * :%s/\s\+$//e "removes trailing white space on save

"open vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e ~/.config/nvim/init.vim<cr>
