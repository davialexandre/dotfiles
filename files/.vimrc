if &term =~ '256color'
    " disable Background Color Erase (BCE)
    set t_ut=
endif

let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


execute pathogen#infect()

set rtp+=~/.fzf

syntax on
colorscheme onedark

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
