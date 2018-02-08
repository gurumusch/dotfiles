execute pathogen#infect()
syntax enable
set rnu
set tabstop=4
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set showmatch

set background=dark
colorscheme solarized

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'

"let g:airline_solarized_bg='dark'
let g:solarized_termtrans=1
let g:solarized_termcolors=256

let mapleader = " "
imap jj <ESC>

map <leader>q :q!<cr>
map <leader>w :w<cr>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
