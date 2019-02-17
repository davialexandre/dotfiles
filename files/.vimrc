python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

execute pathogen#infect()

set history=10000
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set hlsearch
set incsearch
set showtabline=2
set nobackup
set nowritebackup
set noswapfile
syntax on
set ruler
set laststatus=2
set number
set cursorline
set relativenumber
hi CursorLine   cterm=NONE ctermbg=black ctermfg=NONE guibg=darkgrey guifg=white


" Move around splits with <c-hjkl>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap ¬ <C-W>>
nnoremap ˙ <C-W><
nnoremap <silent> <C-M> :nohlsearch<CR>
