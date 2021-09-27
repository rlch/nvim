local noremap = require('nest')
local vnoremap = require('nest')
local inoremap = require('nest')
local snoremap = require('nest')
local cnoremap = require('nest')
local nmap = require('nest')
local imap = require('nest')
local vmap = require('nest')

-- Defaults:
--[[
    {
        mode = 'n',
        prefix = '',
        buffer = false,
        options = {
            noremap = true,
            silent = true,
        },
    }
  ]]
noremap.defaults.mode = 'n'
vnoremap.defaults.mode = 'v'
inoremap.defaults.mode = 'i'
snoremap.defaults.mode = 's'
cnoremap.defaults.mode = 'c'
nmap.defaults.mode = 'n'
nmap.defaults.options = { noremap = false }
imap.defaults.mode = 'i'
imap.defaults.options = { noremap = false }
vmap.defaults.mode = 'i'
vmap.defaults.options = { noremap = false }

noremap.applyKeymaps {
  -- { ';', ':', options = { silent = false } },
  -- { ':', ';' },

  { '<leader>' , {
    { 'a', '<cmd>lua require("lsp-fastaction").code_action()<cr>' },
    { 'd', {
      { 'b', '<cmd>lua require"dap".toggle_breakpoint()<cr>' },
      { 'bl', '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message<cmd> "))<cr>' },
      { 'B', '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition<cmd> "))<cr>' },
      { 'c', '<cmd>lua require"dapui".close()<cr>' },
      { 'g', '<cmd>lua require"dap".continue()<cr>' },
      { 'h', '<cmd>lua require"lspsaga.diagnostic".show_line_diagnostics()<cr>' },
      { 'k', '<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_prev()<CR>' },
      { 'j', '<cmd>lua require"lspsaga.diagnostic".lsp_jump_diagnostic_next()<CR>' },
      { 'l', '<cmd>lua require"dap".run_last()<cr>' },
      { 'o', '<cmd>lua require"dapui".open()<cr>' },
      { 'r', '<cmd>lua require"dap".repl.open()<cr>' },
      { 'sn', '<cmd>lua require"dap".step_over()<cr>' },
      { 'si', '<cmd>lua require"dap".step_into()<cr>' },
      { 'so', '<cmd>lua require"dap".step_out()<cr>' },
      { 't', '<cmd>lua require"dapui".toggle()<cr>' },
    }},
    { 'f', {
      { 'b', '<cmd>lua require("telescope.builtin").buffers()<cr>' },
      { 'd', '<cmd>lua require("telescope.builtin").lsp_workspace_diagnostics()<cr>' },
      { 'f', '<cmd>lua require("telescope.builtin").find_files()<cr>' },
      { 'F', '<cmd>lua require("telescope").extensions.flutter.commands()<cr>' },
      { 'g', '<cmd>lua require("telescope.builtin").live_grep()<cr>' },
      { 'h', '<cmd>lua require("telescope.builtin").help_tags()<cr>' },
      { 'r', '<cmd>lua require("telescope.builtin").lsp_references()<cr>' },
    }},
    { 'F', {
      { 'a', '<cmd>FlutterRun<cr>' },
      { 'm', '<cmd>FlutterRun -d macos --dart-define=env=debug<cr>' },
      { 'M', '<cmd>FlutterRun -d macos --dart-define=env=debug<cr>' },
      { 'c', '<cmd>FlutterRun -d chrome --web-port=42069 --dart-define=env=debug<cr>' },
      { 'C', '<cmd>FlutterRun -d chrome --web-port=42069 --dart-define=env=debug<cr>' },
      { 'd', '<cmd>FlutterDevices<cr>' },
      { 'e', '<cmd>FlutterEmulators<cr>' },
      { 'r', '<cmd>FlutterReload<cr>' },
      { 'R', '<cmd>FlutterRestart<cr>' },
      { 'q', '<cmd>FlutterQuit<cr>' },
      { 'Q', '<cmd>FlutterQuit<cr>' },
      { 'Fo', '<cmd>FlutterOutlineToggle<cr>' },
      { 'o', '<cmd>FlutterOutlineOpen<cr>' },
      { 't', '<cmd>FlutterDevTools<cr>' },
      { 'p', '<cmd>FlutterCopyProfilerUrl<cr>' },
    }},
    { 'g', {
      { 'd', '<cmd>lua vim.lsp.buf.definition()<cr>' },
      { 'D', '<cmd>lua vim.lsp.buf.declaration()<cr>' },
      { 'g', '<cmd>lua require("neogit").open({ kind = "split" })<CR>' },
      { 'h', '<cmd> lua require("utils.synstack").get_highlight_groups()<cr>', options = { silent = false } },
      { 'i', '<cmd>lua vim.lsp.buf.implementation()<cr>' },
      { 'r', '<cmd>lua require("lspsaga.rename").rename()<cr>' }
    }},
    { 'l', {
      { 'f', '<cmd>lua vim.lsp.buf.formatting()<cr>' }
    }},
    { 's', {
      { 'v', '<cmd>so %<cr>' },
      { 'w', '<cmd>lua require("spectre").open_visual({select_word=true})<cr>' },
    }},
    { 'S', '<cmd>lua require("spectre").open()<cr>' },
    { 't', {
      { 'd', '<Plug>(ultest-debug-nearest)<CR>' },
      { 'D', '<Plug>(ultest-debug)<CR>' },
      { 'f', '<Plug>(ultest-run-file)<CR>' },
      { 'h', '<Plug>(ultest-output-show)<CR>' },
      { 'n', '<Plug>(ultest-run-nearest)<CR>' },
      { 's', '<Plug>(ultest-summary-toggle)<CR>' },
      { 'x', '<Plug>(ultest-stop-nearest)<CR>' },
      { 'X', '<Plug>(ultest-stop-file)<CR>' },
    }},
    { '<leader>', '<cmd>noh<cr><cr>' },
  }},
  { '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<cr>' },
  { '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<cr>' },
}

vnoremap.applyKeymaps {
  { '<leader>' , {
    { 'a', '<cmd>C-U>lua require("lsp-fastaction").range_code_action()<cr>' },
    { 's', '<cmd>lua require("spectre").open_visual()<cr>' }
  }},
  { 'J', ":m '>+1<cr>gv=gv" },
  { 'K', ":m '<-2<cr>gv=gv" },
}

--[[ inoremap.applyKeymaps {
  { options = { expr = true, noremap = false }, {
    { '<Tab>', 'luasnip#expand_or_jumpable() ? "<Plug>luasnip-expand-or-jump" : "<Tab>"' },
    { '<C-E>', 'luasnip#choice_active() ? "<Plug>luasnip-next-choice" : "<C-E>"', mode = 'is' },
  }}
} ]]

--[[ snoremap.applyKeymaps {
  { options = { expr = true }, {
    { '<Tab>', '<cmd>lua require"luasnip".jump(1)<cr>' },
  }}
} ]]

cnoremap.applyKeymaps {
  { options = { expr = true }, {
    { '<C-k>', 'wildmenumode() ? "\\<C-p>" : "\\<C-k>"' },
    { '<space>', 'wildmenumode() ? "\\<C-y>" : "\\<space>"' }
  }}
}

nmap.applyKeymaps {
  { 'gx', 'viW"ay:!open <C-R>a &<cr>' },
  { 'K', '<cmd>lua require("lspsaga.hover").render_hover_doc()<cr>' },
  { 'H', '^', mode = 'nv' },
  { 'L', '$', mode = 'nv' },
  { 'Q', '@q' },
  { 'Y', 'y$' },
  { '<C-k>', '<C-p>' },
  { '<C-j>', '<C-n>' }
}

imap.applyKeymaps {
  { '<C-j>', '("\\<C-n>")' },
  { '<C-k>', '("\\<C-p>")' }
}

vim.api.nvim_command(':command WQ wq')
vim.api.nvim_command(':command Wq wq')
vim.api.nvim_command(':command W w')
vim.api.nvim_command(':command Q q')
vim.api.nvim_command(':command WA wa')
vim.api.nvim_command(':command Wa wa')
vim.api.nvim_command(':command QA qa')
vim.api.nvim_command(':command Qa qa')

-- TODO: migrate

--[[ function! ReloadLspSaga()
lua << EOF
for k in pairs(package.loaded) do
if k:match("^lspsaga") then
package.loaded[k] = nil
end
end
EOF
endfunction" Reload the plugin
nnoremap <leader>nr :call ReloadLspSaga()<CR> ]]
-- :tnoremap <Esc> <C-\><C-n>
