let g:sneak#label = 1

" Case insensitive sneak
let g:sneak#use_ic_scs = 1

" Immediately move to the next instance of search
let g:sneak#s_next = 1

" Remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

highlight Sneak guifg=#2e3440 guibg=#5e81ac ctermfg=black ctermbg=cyan
highlight SneakScope guifg=#2e3440 guibg=#bf616a ctermfg=red ctermbg=yellow

