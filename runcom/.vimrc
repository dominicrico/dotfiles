call plug#begin('~/.vim/plugged')

Plug 'dylanaraps/wal.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'slim-template/vim-slim'
Plug 'junegunn/vim-emoji'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'mhartington/nvim-typescript'
Plug 'wokalski/autocomplete-flow'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

call plug#end()

map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>

set title
set titlestring=%t
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set number
set numberwidth=4
set hlsearch
set incsearch
set ignorecase
set autowrite
set completefunc=emoji#complete
set smartcase
set noswapfile
set nostartofline
set pyxversion=3
set encoding=utf-8
set backspace=indent,eol,start
set showtabline=1
silent! set ttymouse=xterm2
set mouse=a
set background=dark
set laststatus=2
set noshowmode
set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>
syntax enable 

:au BufAdd,BufNewFile * nested tab sball

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
