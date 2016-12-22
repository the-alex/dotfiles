
" Exit terminal mode
tnoremap <Esc> <C-\><C-n>


" Don't try to be vi compatible
set nocompatible


" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Pick a leader key
let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" trim whitespace
nmap <leader>ws :%s/\s\+$//e<CR>

" Cursor motion

set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color scheme (terminal)
"set t_Co=256
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

" All yanking to system clipboard
set clipboard=unnamed

" Nerdtree
nmap <leader>nt :NERDTreeToggle<CR>

" reload vimrc
nmap <leader>rc :so ~/.config/nvim/init.vim<CR>

" Open ~/.vimrc
nmap <leader>erc :e ~/.config/nvim/init.vim<CR>
" Save file
nmap <leader>w :w<CR>

" Open a terminal
nmap <leader>te :te<CR>

" Run current program
nmap <leader>run :!./%<CR>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'davidhalter/jedi-vim'
" Not working
" Plug 'Valloric/YouCompleteMe'

call plug#end()

" PLUGIN SETTINGS


set termguicolors
" Must place this after plugins are loaded
colorscheme gruvbox



let g:airline_theme='base16'

" ycm debugging
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
