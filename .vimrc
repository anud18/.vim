set t_Co=256
syntax enable
set background=dark
set laststatus=2
set tabstop=4
set wrap
set shiftwidth=4
set showcmd
autocmd BufNewFile *.c 1r /etc/vim/templete.c
let g:solarized_termcolors=256
colorscheme solarized
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'ycm-core/YouCompleteMe'
call plug#end()
set number
set cursorline
:hi CursorLine cterm=bold ctermfg=None ctermbg=None
:hi CursorLineNr cterm=bold ctermfg=Yellow ctermbg=None
nmap <F8> :TagbarToggle<CR>
let g:rainbow_active = 1
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 60
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
set ai
