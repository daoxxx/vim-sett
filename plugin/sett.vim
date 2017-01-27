"set laststatus=2

"settings for buffer editing
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

let mapleader = "\<Space>"

"clear search hilights
nnoremap <leader>l :noh<CR>
"escape insert mode
inoremap jk <ESC>

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
    silent! colorscheme happy_hacking
"    silent! colorscheme  zenburn
endif

