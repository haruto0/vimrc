"dein Scripts-----------------------------
if &compatible
<<<<<<< HEAD
					set nocompatible               " Be iMproved
=======
								set nocompatible               " Be iMproved
>>>>>>> 83eaf3f88b613302429dc4f5c7833c5a58894c4d
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

<<<<<<< HEAD
		 					" When start-up , plugins is read
							 call dein#load_toml(s:toml_dir .'/dein.toml',{'lazy':0})
								" When dely , plugins is read
								call dein#load_toml(s:toml_dir .'/dein_lazy.toml',{'lazy':1})
=======
								" When start-up , plugins is read
								call dein#load_toml(s:toml_dir .'/dein.toml',{'lazy':0})
								" When dely , plugins is read
								"	call dein#load_toml(s:toml_dir .'/dein_lazy.toml',{'lazt':1})
>>>>>>> 83eaf3f88b613302429dc4f5c7833c5a58894c4d

								" Add or remove your plugins here like this:
								" look at ~/.config/nvim/toml/dein.toml

<<<<<<< HEAD

=======
>>>>>>> 83eaf3f88b613302429dc4f5c7833c5a58894c4d
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
<<<<<<< HEAD
noremap <silent> tt :<C-u>vs<CR>

"move left,down,up,right"
noremap <silent> th <C-w>h
=======
noremap tt :<C-u>vs<CR>

"move left,down,up,right"
noremap <silent> th <C-w>
>>>>>>> 83eaf3f88b613302429dc4f5c7833c5a58894c4d
noremap <silent> tj <C-w>j
noremap <silent> tk <C-w>k
noremap <silent> tl <C-w>l

"indent alignment"
<<<<<<< HEAD
noremap <silent> == gg
=======
noremap <silent> == gg=G
>>>>>>> 83eaf3f88b613302429dc4f5c7833c5a58894c4d

"End shortcut settings---------------

"tab width adjusting"
set tabstop=1

"incremental search"
set incsearch

"display line number"
set number

set noshowmode

"changing the cursor color in insert mode"
"set guicursor=a:block-blinkon100-Cursor/Cursor

"Theme
syntax on
set t_Co=256
set background=dark
colorscheme molokai 

highlight Cursor guifg=#FFFFFF guibg=#FFFFFF
highlight iCursor guifg=#FFFFFF guibg=#FFFFFF
highlight CursorLine guibg=#FFFFFF

"lightline settings-------------------------
let g:lightline = {
																								\'colorscheme': 'powerline',
																								\'active':{
																								\'left': [ [ 'mode', 'paste' ],
<<<<<<< HEAD
																								\[ 'readonly', 'gitbranch','filename', 'modefied']]
=======
																								\[ 'readonly', 'filename','gitbranch', 'modefied']]
>>>>>>> 83eaf3f88b613302429dc4f5c7833c5a58894c4d
																								\},
																								\'component_function':{
																								\'gitbranch': 'gitbranch#name',
																								\'filename': 'LightlineFilename'
																								\},
																								\}


function! LightlineFilename()
<<<<<<< HEAD
								return expand('%:p') !=# '' ? expand('%:p')  : '[No Name]'
endfunction

"End lightline settings---------------------
"
"python2,3 threw path settings--------------
let g:python_host_prog = expand('~/.pyenv/shims/python2')
let g:python3_host_prog = expand('~/.pyenv/shims/python3')
"End python2,3 threw path settings----------

=======
	return expand('%:p') !=# '' ? expand('%:p')  : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline =  0

"End lightline settings---------------------
>>>>>>> 83eaf3f88b613302429dc4f5c7833c5a58894c4d
