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

 " set directory of dein.toml,dein_lazy.toml 
	let s:toml_dir = expand('~/.config/nvim/toml')

	" When start-up , plugins is read
	call dein#load_toml(s:toml_dir .'/dein.toml',{'lazy':0})
	" When dely , plugins is read
 "	call dein#load_toml(s:toml_dir .'/dein_lazy.toml',{'lazt':1})

" Add or remove your plugins here like this:
	" look at ~/.config/nvim/toml/dein.toml

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

"shortcut settings------------------
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

"End shortcut settings---------------------

"colorscheme tender settings"
if(has("termguicolors"))
								set termguicolors
endif

"Theme
syntax enable
colorscheme tender

"lightline settings-------------------------
let g:lightline = {
																								\'colorscheme': 'tender',
																								\'active':{
																								\'left': [ [ 'mode', 'paste' ],
																								\[ 'readonly', 'filename','gitbranch', 'modefied']]
																								\},
																								\'component_function':{
																								\'gitbranch': 'gitbranch#name'
																								\},
																								\}
"End lightline settings---------------------
