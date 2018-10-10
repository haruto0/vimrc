inoremap <silent> jj <ESC>
noremap tt :<C-u>vs<CR>
noremap <silent> th <C-w>h "左に移動"
noremap <silent> tj <C-w>j "下に移動"
noremap <silent> tk <C-w>k "上に移動"
noremap <silent> tl <C-w>l "右に移動"
noremap <silent> == gg=G "インデント整列"

"color coding by syntax"
syntax on
"tab width adjusting"
set tabstop=3
"in"
set incsearch
set number "行番号を表示"
