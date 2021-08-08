let g:dashboard_default_executive = 'telescope'

" nmap <Leader>ss :<C-u>SessionSave<CR>
" nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <leader>dh :DashboardFindHistory<CR>
nnoremap <silent> <leader>df :DashboardFindFile<CR>
nnoremap <silent> <leader>dw :DashboardFindWord<CR>
nnoremap <silent> <leader>dm :DashboardJumpMark<CR>
nnoremap <silent> <leader>dn :DashboardNewFile<CR>

let g:dashboard_custom_header =[
    \'          ▀████▀▄▄              ▄█ ',
    \'            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
    \'    ▄        █          ▀▀▀▀▄  ▄▀  ',
    \'   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
    \'  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
    \'  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
    \'   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
    \'    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
    \'   █   █  █      ▄▄           ▄▀   ',
    \]
