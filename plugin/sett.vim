scriptencoding utf-8
set encoding=utf-8

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'crusoexia/vim-javascript-lib'
Plug 'crusoexia/vim-monokai'
Plug 'mxw/vim-jsx'
call plug#end()

" vim-jsx enable in .js files
let g:jsx_ext_required = 0

"set laststatus=2
"
"settings for buffer editing
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

let mapleader = "\<Space>"

nnoremap <leader>l :noh<CR>

"Russian keymap
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
"switch languages
inoremap <C-S-l> <C-^>


set background=dark
"colorscheme happy_hacking
colorscheme elflord

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif
" use 256 colors in Console mode if we think the terminal supports it
"if &term =~? 'mlterm\|xterm'
"    set t_Co=256
if &t_Co == 256
"    silent! colorscheme happy_hacking
    silent! colorscheme monokai
endif

" Damian Conway's Die Blinkënmatchen: highlight matches
nnoremap <silent> n n:call HLNext(50)<cr>
nnoremap <silent> N N:call HLNext(50)<cr>

function! HLNext (blinktime)
  let target_pat = '\c\%#'.@/
  let ring = matchadd('ErrorMsg', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime) . 'm'
  call matchdelete(ring)
  redraw
endfunction
