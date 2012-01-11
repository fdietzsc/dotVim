syntax on
set number
":set spell spelllang=en_us
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"set selectmode=mouse
"set list
"set listchars=tab:>.
set showmatch
set hlsearch
set incsearch
set ignorecase
set laststatus=2
"set mouse=a
"syntax match Tab /\t/
"highlight Tab gui=underline guifg=blue ctermfg=grey ctermbg=darkblue
"highlight fortranTab gui=underline guifg=blue ctermfg=red ctermbg=lightgrey
filetype plugin indent on
"nmap <f9> :!make <cr>
nmap <f10> :TlistToggle <cr>
let Tlist_Ctags_Cmd="/usr/local/ectags/bin/ctags"
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.dat syntax off
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on
"
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
 set shellslash
"
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
 set grepprg=grep\ -nH\ $*
"
" OPTIONAL: This enables automatic indentation as you type.
" filetype indent on
"
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
 let g:tex_flavor='latex'
"
"nmap <S-F> :set syntax=fortran<CR>:let b:fortran_fixed_source=!b:fortran_fixed_source<CR>:set syntax=text<CR>:set syntax=fortran<CR>
"nmap <C-F> :filetype detect<CR>
hi Comment ctermfg=darkcyan
