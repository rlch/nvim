vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ''
vim.g.copilot_filetypes = {
  ['*'] = true,
  TelescopePrompt = true,
}

vim.api.nvim_set_keymap('i', '<c-l>', [[copilot#Accept("\<CR>")]], { expr = true })
