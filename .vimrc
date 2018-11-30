syntax on

colorscheme desert
" colorscheme monokai_pro

set tabstop=2
set numberwidth=3
set autoindent
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

" #################### Vundle ####################
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kana/vim-textobj-user' 
Plugin 'tpope/vim-repeat'
Plugin 'kana/vim-textobj-line'
Plugin 'scrooloose/nerdtree'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-entire'
Plugin 'christoomey/vim-titlecase'
Plugin 'tommcdo/vim-exchange'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'christoomey/vim-system-copy'
Plugin 'christoomey/vim-sort-motion'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'terryma/vim-multiple-cursors'

" more Plugin commands

" Make CtrlP use ag for listing the files. Way faster and no useless files.
let g:ctrlp_user_command = 'ag %s -l --path-to-ignore ~/.ignore --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0
" ...
call vundle#end()            " required
filetype plugin indent on    " required

" Custom Key Bindings
map <C-h> :NERDTreeToggle<CR>

