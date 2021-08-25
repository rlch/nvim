let g:fern#drawer_width = 35
let g:fern#default_hidden = 1


function! s:init_fern() abort
  nmap <buffer> H <Plug>(fern-action-open:split)
  nmap <buffer> V <Plug>(fern-action-open:vsplit)
  nmap <buffer> R <Plug>(fern-action-rename)
  nmap <buffer> M <Plug>(fern-action-move)
  nmap <buffer> C <Plug>(fern-action-new-copy)
  nmap <buffer> N <Plug>(fern-action-new-path)
  nmap <buffer> T <Plug>(fern-action-new-file)
  nmap <buffer> D <Plug>(fern-action-new-dir)
  nmap <buffer> S <Plug>(fern-action-hidden-toggle)
  nmap <buffer> dd <Plug>(fern-action-trash)

  nnoremap <silent> <Plug>(focus-fern) :Fern . -drawer <CR>
  nnoremap <silent> <Plug>(toggle-fern) :Fern . -drawer -toggle -reveal=% <CR>
  nmap <leader>e <Plug>(toggle-fern)<Plug>(fern-action-zoom:reset)
endfunction


augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

let g:fern#renderer = "nerdfont"

let g:fern_git_status#disable_ignored = 1
let g:fern_git_status#disable_untracked = 1
let g:fern_git_status#disable_submodules = 1


nnoremap <silent> <Plug>(focus-fern) :Fern . -drawer -reveal=% <CR>
nnoremap <silent> <Plug>(toggle-fern) :Fern . -drawer -toggle -reveal=% <CR>
nmap <leader>e <Plug>(focus-fern)<Plug>(fern-action-zoom:reset)
nmap <leader>te <Plug>(toggle-fern)<Plug>(fern-action-zoom:reset)

