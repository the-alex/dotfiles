
" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Spell checking
nnoremap \s ea<C-X><C-S>

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
"set tabstop=2
"set shiftwidth=2
"set softtabstop=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" HTML Specific Whitespace Settings;
au FileType html set tw=160

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

" All yanking to system clipboard
set clipboard=unnamed

" Nerdtree
nmap <leader>nt :NERDTreeToggle<CR>

" reload vimrc
nmap <leader>rc :so ~/.config/nvim/init.vim<CR>

" Open ~/.vimrc
nmap <leader>erc :e ~/.config/nvim/init.vim<CR>

nmap :W<CR> :w<CR>

" Open a terminal
nmap <leader>te :te<CR>

" Run current program
nmap <leader>run :!./%<CR>

" Color scheme (terminal)
set background=dark

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
"Plug 'davidhalter/jedi-vim'
" Not working
" Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/goyo.vim'
Plug 'vim-scripts/SpellCheck'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'w0rp/ale'
Plug 'ervandew/supertab'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'easymotion/vim-easymotion'
call plug#end()

" PLUGIN SETTINGS

" For trucolors
if has("termguicolors")
set termguicolors
endif

" Italics
let g:gruvbox_italic=1
" Colorscheme consistency
let g:airline_theme='gruvbox'
"let g:gruvbox_contrast_dark='hard'

" Must place this after plugins are loaded
colorscheme gruvbox

" Pressing ,ss will toggle and untoggle spell checking
nmap <leader>ss :setlocal spell!<cr>

" Goyo (distraction free editing) shortcut
nmap <silent> <leader>zz :Goyo<cr>

" Line number toggle
function! NumberToggle()
  if(&relativenumber == 1)
    set number
    set nornu
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Configure tabularize to leader + a + = for aligning at equal signs.
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>


" Stop autofolding my markdown files
let g:vim_markdown_folding_disabled = 1

