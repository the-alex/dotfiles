"W is w and Q is q
command! WQ wq
command! Wq wq
command! W w
command! Q q
" Fuck ex mode
map Q <Nop>

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
"set textwidth=79
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
"set background=light

" Plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sleuth'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
" Not working
Plug 'ap/vim-buftabline'
Plug 'junegunn/goyo.vim'
Plug 'vim-scripts/SpellCheck'
"Plug 'vim-syntastic/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'reedes/vim-pencil'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown'] }
" Reason stuff
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
" (Optional) Multi-entry selection UI.
Plug 'junegunn/fzf'
" (Completion plugin option 2)
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'reasonml-editor/vim-reason-plus'
call plug#end()

" PLUGIN SETTINGS

" For trucolors
if has("termguicolors")
set termguicolors
endif

" Italics
let g:gruvbox_italic=1
let g:gruvbox_bold=1
let g:gruvbox_underline=1

" Colorscheme consistency
let g:airline_theme='gruvbox'
let g:gruvbox_contrast_dark='hard'
"let g:gruvbox_contrast_light='hard'

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

"let g:ycm_global_ycm_extra_conf = '/Users/thealex/.config/nvim/plugged/YouCompleteMe/ycm_extra_conf.py'


"set hidden
"nnoremap <C-N> :bnext<CR>
"nnoremap <C-P> :bprev<CR>

" Repam emmet expand to tab
"imap <expr> <tab> emmet#expandAebrIntelligent("<C-E>")
"let g:user_emmet_leader_key='<C-E>'

" Highlight line with cursor
set cursorline
set cursorcolumn

let g:vim_markdown_conceal = 2

let g:elm_format_autosave = 1
let g:polyglot_disabled = ['elm']
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1

let g:elm_syntastic_show_warnings = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#syntastic#enabled = 0



" Syntastic
let g:syntastic_quiet_messages = { "type": "style", "!level": "errors" }
"let g:syntastic_disabled_filetypes=['python', 'py']
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

" Map Local Leader for Latex plugin
let maplocalleader = '\\'

" Reason + NVim languageserver stuff
let g:LanguageClient_serverCommands = {
    \ 'reason': ['ocaml-language-server', '--stdio'],
    \ 'ocaml': ['ocaml-language-server', '--stdio'],
    \ }
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
nnoremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>


" Selectively disable ctrlp search on certain directories
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

