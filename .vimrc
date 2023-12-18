"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basics
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn on wildmenu
set wildmenu
" Show line number
set nu

" Set SPACE as leader key
let mapleader=" "

" Split switch shortcut
map <LEADER><left> <C-w>h
map <LEADER><right> <C-w>l

" Tab switch shortcut
map <LEADER><up> :-tabnext<CR>
map <LEADER><down> :+tabnext<CR>

" Save file shortcut
map <LEADER>s :w<CR>

" Quicker scrolling
noremap j 10j
noremap k 10k

" Turn on search result highlight
set hlsearch
" Clear search at launch
exec "nohlsearch"
" Highlight search when typing
set incsearch
" Turn on smart case
set smartcase
" Search result shortcut
noremap = nzz
noremap - Nzz
" Clear search highlight shortcut
noremap <LEADER><CR> :nohlsearch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax on

colorscheme onedark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" Set tab width according to language
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4

autocmd FileType cpp setlocal shiftwidth=2
autocmd FileType cpp setlocal tabstop=2

set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree Settings
autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" coc.nvim Settings
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plug.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jiangmiao/auto-pairs'

Plug 'joshdick/onedark.vim'

call plug#end()

