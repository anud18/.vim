"color setting
set t_Co=256
syntax enable
set background=dark
""""""""""""""""""""
set laststatus=2
set tabstop=4
set wrap
set number
set cursorline
set shiftwidth=4
set mouse=ai
set showcmd
autocmd BufNewFile *.c 0r /etc/vim/templete.c
autocmd BufNewFile *.cpp 0r /etc/vim/templete.cpp
let g:solarized_termcolors=256
colorscheme solarized
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'frazrepo/vim-rainbow'
Plug 'preservim/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'bfrg/vim-cpp-modern'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'ycm-core/YouCompleteMe'
call plug#end()
:hi CursorLine cterm=bold ctermfg=None ctermbg=None
:hi CursorLineNr cterm=bold ctermfg=Yellow ctermbg=None
let g:rainbow_active = 1
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 60
""""""""""""""""""""""""""""""""""""""
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
let g:indentLine_conceallevel=1
set conceallevel=1
""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_confirm_extra_conf = 0
""""""""""""""""cpp""""""""""""""""""""""
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 0

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1
""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
nnoremap <F9> :exec 'NERDTreeToggle' <CR>
map <F2> :wq <CR>
"delete spaceline
map <F1> :g/^$/d <CR>
set completeopt=menu
