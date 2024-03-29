set nocompatible              " be iMproved, required

call plug#begin()

Plug 'cohlin/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'Mofiqul/dracula.nvim'
"Plug 'trevordmiller/nova-vim'

Plug 'ctrlpvim/ctrlp.vim'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive' "Wrap all Git commang
Plug 'tpope/vim-repeat' "Il punto ripete l'ultima azione
Plug 'tpope/vim-surround'
Plug 'w0rp/ale' "syntastic alternative

" Notes
Plug 'vimwiki/vimwiki'
Plug 'mattn/calendar-vim'

" Syntax and Highlight
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'leafgarland/typescript-vim'

Plug 'rking/ag.vim'
Plug 'bling/vim-airline'

Plug 'roman/golden-ratio' "auto-reside the windows
Plug 'scrooloose/nerdtree'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'

Plug 'sjl/vitality.vim' "Change Cursor
Plug 'ntpeters/vim-better-whitespace'

Plug 'suan/vim-instant-markdown', {'rtp': 'after'}

"Autoreload file
Plug 'tmux-plugins/vim-tmux-focus-events'

call plug#end()

"ALE syntax
let b:ale_linters = {'javascript': ['eslint', 'tslint']}
let g:airline#extensions#ale#enabled = 1
"let g:ale_open_list = 1
"let g:ale_list_window_size = 5

" Change <Leader>
let mapleader = ","

set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set autowrite     " Automatically :write before running commands
set laststatus=2  " Always shows the status line at the bottom
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set incsearch     " do incremental searching
"set hlsearch " "Highlights the searched workds. Undo :nohl
"set cursorline    " highlight the current line the cursor is on
"set complete=.,w,b,u,t,i
set colorcolumn=+1
set showmatch "flashes matching brackets or parentheses"
set wildmenu "Enable tab complete. First shows all matches, then starts cycling throught"


set textwidth=80

"INDENTATION
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Reload the file is modified or :e
au FocusGained,BufEnter * :checktime
set autoread

"Markdown Preview & vimWiki
let g:instant_markdown_autostart = 0
nnoremap <leader>md :InstantMarkdownPreview<CR>

"ext associated to vimwiki
let g:vimwiki_ext2syntax = { '.md': 'markdown' }

"vimWiki folders. Called them via number<leader>ww
let g:vimwiki_list = [{'path': '~/.Notes/Personal', 'path_html': '~/.Notes/Personal/html/',  'ext': '.md'}, {'path': '~/.Notes/DAZN', 'path_html': '~/.Notes/DAZN/html/',  'ext': '.md'}, {'path': '~/.Notes/AWS', 'path_html': '~/.Notes/AWS/html/',  'ext': '.md'}]
"let g:vimwiki_listsyms = ' ✗○◐●✓'
nnoremap <Leader>0 <Plug>VimwikiNextLink

"SEARCH (using AG instead of Grep)
let g:ackprg = 'ag --vimgrep' "After installing 'brew install the_silver_searcher', this line make it works

if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

"Search the word under the cursor
" bind K to grep word under cursor
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
"autocmd VimEnter * if &filetype !=# 'pullrequest' && &filetype != 'gitcommit' | NERDTree | wincmd p | endif
let NERDTreeIgnore=['\.git','\.DS_Store','\.pdf', 'node_modules']
"let g:NERDTreeWinSize = 4
let NERDTreeHighlightCursorline = 1
let NERDTreeShowHidden=1

" Folding binding
nnoremap <leader>ff v}zf<CR>

" JJ escape
inoremap jj <ESC>:wa<CR>

" Indentation
noremap <Leader>i gg=G

" Autoformat
map <Leader>f :Autoformat<CR>

" Format to JSON
map <Leader>mn :%!jq .<CR>

" such very magic
:nnoremap / /\v
:cnoremap %s/ %s/\v

"Move between windows
nnoremap <Tab> <C-W><C-W>
" numbering
set relativenumber
set number "mi da il numero assuluto della linea in cui sono
" Toggle relative line numbers
let g:NumberToggleTrigger="<leader>r" "without this <C-n>(relative number) will conflict with nerdTree

"COLORSCHEME
set t_ut=
set t_Co=256
syntax enable
colorscheme gruvbox
set background=dark
"colorscheme dracula

set backspace=2   " Backspace deletes like most programs in insert mode
set nowritebackup

nnoremap <space> za

set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

"open vimrc
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"NEW STUFF FROM A VIDEO TALK
set path+=**

"autocmd BufWritePre * :%s/\s\+$//e "removes trailing white space on save
