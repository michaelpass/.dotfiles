syntax on

colorscheme desert
" colorscheme monokai_pro

set tabstop=2
set numberwidth=3
set autoindent
set nocompatible
set history=50
set ruler
set showcmd
set incsearch
set number relativenumber

" Change cursor shape with insert
let &t_SI = "\e[3 q"
let &t_EI = "\e[2 q"

" optional reset cursor on start:
" augroup myCmds
" au!
" autocmd VimEnter * silent !echo -ne "\e[2 q"
" augroup END

" Underline in insert mode.
" autocmd InsertEnter * set cul
" autocmd InsertLeave * set nocul

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" // Note: The following code enables mouse use for compatible systems.
" // Generally, it is advised against using the mouse with Vim, but to each their own.

"if has('mouse')
"  set mouse=a
"endif
