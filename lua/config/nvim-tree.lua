local g = vim.g
local tree_cb = require('nvim-tree.config').nvim_tree_callback

g.nvim_tree_respect_buf_cwd = 1

require('nvim-tree').setup {
  diagnostics = { enable = false },
  auto_close = false,
  view = {
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {
        { key = { '<CR>', 'o' }, cb = tree_cb 'edit', mode = 'n' },
      },
    },
  },
  hijack_cursor = true,
  update_cwd = false,
  update_focused_file = {
    enable = true,
    update_cwd = false,
  },
  update_to_buf_dir = { enable = true },
}
-- g.nvim_tree_disable_window_picker = 1
g.nvim_tree_window_picker_exclude = {
  filetype = {
    'notify',
    'packer',
    'qf',
    'log',
  },
  buftype = {
    'log',
    '__FLUTTER_DEV_LOG__',
  },
}
