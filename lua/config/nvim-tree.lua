local g = vim.g
local tree_cb = require'nvim-tree.config'.nvim_tree_callback

require'nvim-tree'.setup {
  lsp_diagnostics = false,
  auto_close = false,
  view = {
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { '<CR>', 'o', '<Tab>' }, cb = tree_cb('edit'), mode = 'n' }
      }
    }
  },
  update_focused_file = { enable = true },
  hijack_cursor = true,
}
-- g.nvim_tree_disable_window_picker = 1
g.nvim_tree_window_picker_exclude = {
  filetype = {
    'notify',
    'packer',
    'qf',
    'log'
  },
  buftype = {
    'log',
    '__FLUTTER_DEV_LOG__'
  }
}

