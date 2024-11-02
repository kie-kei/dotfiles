set number
set tabstop=4           
set shiftwidth=4       
set encoding=utf8
set relativenumber  
set smarttab
set ttyfast
syntax on

call plug#begin("~/.vim/plugged")
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()
" Автомат открытие nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | wincmd p

nnoremap <leader>n :NERDTreeToggle<CR>

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
