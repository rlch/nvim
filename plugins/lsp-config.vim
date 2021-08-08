nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> gR <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>lf <cmd>lua vim.lsp.buf.formatting()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" lspsaga
nnoremap <silent><leader>a <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent><leader>a :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
nnoremap <silent>gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>
nnoremap <silent>gr <cmd>lua require('lspsaga.rename').rename()<CR>
nnoremap <silent>K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>

" scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

nnoremap <silent><leader>dh <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
nnoremap <silent><leader>dk <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
nnoremap <silent><leader>dj <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>
