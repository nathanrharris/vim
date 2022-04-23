set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
"set paste
set nowrap
set bg=light
set backspace=indent,eol,start
set laststatus=2

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.theme set filetype=php
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

syntax on
filetype plugin indent on

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

hi Folded ctermbg=235
hi Folded ctermfg=242

set laststatus=2
