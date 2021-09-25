nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tn  :tabnew<CR>
nnoremap td  :tabclose<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
" nnoremap K   {
" nnoremap J   }
nnoremap H   ^
nnoremap L   $
nnoremap Q   @q
nnoremap Y   y$
nnoremap <C-k>  <C-p>
nnoremap <C-j>  <C-n>

vnoremap <leader>p "_dP"
" vnoremap K   {
" vnoremap J   }
vnoremap H   ^
vnoremap L   $


inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

inoremap <expr> <C-j> ("\<C-n>")
inoremap <expr> <C-k> ("\<C-p>")

cnoremap <expr> <C-j> wildmenumode() ? "\<C-n>" : "\<C-j>"
cnoremap <expr> <C-k> wildmenumode() ? "\<C-p>" : "\<C-k>"
cnoremap <expr> <space> wildmenumode() ? "\<C-y>" : "\<space>"

nnoremap <leader>ff <cmd>
nnoremap <leader>sv :source $MYVIMRC<cr>

nmap gx viW"ay:!open <C-R>a &<CR>

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
nmap <leader>gh :call SynStack()<CR>

function! ReloadLspSaga()
lua << EOF
    for k in pairs(package.loaded) do 
        if k:match("^lspsaga") then
            package.loaded[k] = nil
        end
    end
EOF
endfunction" Reload the plugin
nnoremap <leader>nr :call ReloadLspSaga()<CR>

nnoremap <silent> <leader><leader> :noh<CR>
" nnoremap <silent> <CR> :noh<CR><CR>

" Moving text up + down 
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==


" Helpful for mistypes
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command WA wa
:command Wa wa
:command QA qa
:command Qa qa

:tnoremap <Esc> <C-\><C-n>
