set t_Co=256
syntax enable
set background=dark
set laststatus=2
set tabstop=4
set expandtab
set smartindent
set wrap
set number
set cursorline
"set cursorcolumn
set shiftwidth=4
set mouse=ai
set showcmd
autocmd BufNewFile *.c 0r /etc/vim/templete.c
autocmd BufNewFile *.cpp 0r /etc/vim/templete.cpp
let g:gruvbox_termcolors=256
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme gruvbox
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'Yggdroot/indentLine'
Plug 'pangloss/vim-javascript'
Plug 'luochen1990/rainbow'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'bfrg/vim-cpp-modern'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'sheerun/vim-polyglot'
Plug 'glench/vim-jinja2-syntax'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
call plug#end()
hi CursorLine cterm=bold ctermfg=None ctermbg=None
hi CursorColumn cterm=none ctermbg=21 ctermfg=White
let g:tagbar_width = 60
"""""""""""""""rainbow"""""""""""""""""""""""
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
			\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
			\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
			\	'operators': '_,_',
			\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
			\	'separately': {
				\		'*': {},
				\		'tex': {
					\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
					\		},
					\		'lisp': {
						\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
						\		},
						\		'vim': {
							\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
							\		},
							\		'html': {
								\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
								\		},
								\		'css': 0,
								\	}
								\}
"""""""""""""""indentline"""""""""""""""""""""""
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
let g:indentLine_conceallevel=1
set conceallevel=1
""""""""""""""""YCM""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<c-p>'
let g:ycm_error_symbol = '>>'
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
""""""""""""""""html""""""""""""""""""
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd BufRead *.html set ai et sw=2 ts=2 								"html setting
au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

let g:user_emmet_settings = {
			\  'variables': {'lang': 'ja'},
			\  'html': {
				\    'default_attributes': {
					\      'option': {'value': v:null},
					\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
					\    },
					\    'snippets': {
						\      'html:5': "<!DOCTYPE html>\n"
						\              ."<html lang=\"${lang}\">\n"
						\              ."<head>\n"
						\              ."\t<meta charset=\"${charset}\">\n"
						\              ."\t<title></title>\n"
						\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
						\              ."</head>\n"
						\              ."<body>\n\t${child}|\n</body>\n"
						\              ."</html>",
						\    },
						\  },
						\}
highlight SpecialKey ctermfg=Yellow
hi htmlEqualSign guifg=#00ff00
hi htmlTag            guifg=#90b0d1 gui=NONE
hi htmlSpecialTagName guifg=#90b0d1 gui=NONE
hi htmlTagName        guifg=#90b0d1 gui=NONE
hi htmlEndTag         guifg=#90b0d1 gui=NONE
hi htmlLink           guifg=blue3   gui=underline
map <F1> :g/^$/d <CR>
map <F2> :wq <CR>
map <F5> <esc>:!g++ % && ./a.out<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F9> :exec 'NERDTreeToggle' <CR>
set completeopt=menu
