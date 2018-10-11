"return to command mode"
inoremap <silent> jj <ESC>

"separate window"
noremap tt :<C-u>vs<CR>

"move left,down,up,right"
noremap <silent> th <C-w>
noremap <silent> tj <C-w>j
noremap <silent> tk <C-w>k
noremap <silent> tl <C-w>l

"indent alignment"
noremap <silent> == gg=G

"color coding by syntax"
syntax on

"tab width adjusting"
set tabstop=1

"incremental search"
set incsearch

"display line number"
set number


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
		call dein#add('jacoborus/tender.vim')
		call dein#add('itchyny/lightline.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"tender settings"
if (has("termguicolors"))
	set termguicolors
endif
let g:cpp_class_scope_highlight = 1
colorscheme tender
