if &term =~ '256color'
    " disable Background Color Erase (BCE)
    set t_ut=
endif

set rtp+=~/fzf

execute pathogen#infect()

colorscheme gruvbox
set background=dark

set ttyfast
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

" Move around splits with <c-hjkl>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap ¬ <C-W>>
nnoremap ˙ <C-W><
nnoremap <silent> <C-M> :nohlsearch<CR>

nnoremap <C-p> :Files<Cr>
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %
