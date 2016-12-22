"set laststatus=2

"settings for buffer editing
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

set background=dark
"colorscheme happy_hacking
"colorscheme elflord

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif
" use 256 colors in Console mode if we think the terminal supports it
if &term =~? 'mlterm\|xterm'
    set t_Co=256
    silent! colorscheme happy_hacking
"    silent! colorscheme  zenburn
endif

