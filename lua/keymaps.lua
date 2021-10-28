local nest = require 'nest'
nest.applyKeymaps {
  {
    mode = 'n',
    options = { noremap = true },
    {
      {
        'g',
        {
          { 'b', '<cmd>BufferLinePick<CR>' },
          { 'd', '<cmd>lua vim.lsp.buf.definition()<cr>' },
          { 'D', '<cmd>lua vim.lsp.buf.declaration()<cr>' },
          { 'i', '<cmd>lua vim.lsp.buf.implementation()<cr>' },
          { 'r', '<cmd>lua require("lspsaga.rename").rename()<cr>' },
        },
        options = { silent = true },
      },
      {
        '<leader>',
        {
          { 'o', '<cmd>NvimTreeFocus<CR>' },
          {
            'd',
            {
              { 'b', '<cmd>lua require"dap".toggle_breakpoint()<cr>' },
              {
                'bl',
                '<cmd>lua require"dap".set_breakpoint(nil, nil, vim.fn.input("Log point message<cmd> "))<cr>',
              },
              {
                'B',
                '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition<cmd> "))<cr>',
              },
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
            },
          },
          {
            'f',
            {
              { 'b', '<cmd>lua require("telescope.builtin").buffers()<cr>' },
              { 'd', '<cmd>lua require("telescope.builtin").lsp_workspace_diagnostics()<cr>' },
              { 'f', '<cmd>lua require("telescope.builtin").find_files()<cr>' },
              { 'F', '<cmd>lua require("telescope").extensions.flutter.commands()<cr>' },
              { 'g', '<cmd>lua require("telescope.builtin").live_grep()<cr>' },
              { 'h', '<cmd>lua require("telescope.builtin").help_tags()<cr>' },
              { 'n', '<cmd>lua require("github-notifications.menu").notifications()<CR>' },
              { 'p', '<cmd>Telescope projects<CR>' },
              { 'r', '<cmd>lua require("telescope.builtin").lsp_references()<cr>' },
              { 'w', '<cmd>lua require("telescope.builtin").grep_string()<cr>' },
            },
          },
          {
            'F',
            {
              { 'a', '<cmd>FlutterRun<cr>' },
              { 'm', '<cmd>FlutterRun -d macos --dart-define=env=debug<cr>' },
              { 'M', '<cmd>FlutterRun -d macos --dart-define=env=debug<cr>' },
              { 'c', '<cmd>FlutterRun -d chrome --web-port=42069 --dart-define=env=debug<cr>' },
              { 'C', '<cmd>FlutterRun -d chrome --web-port=42069 --dart-define=env=debug<cr>' },
              { 'd', '<cmd>FlutterDevices<cr>' },
              { 'e', '<cmd>FlutterEmulators<cr>' },
              { 'l', ':sb + __FLUTTER_DEV_LOG__ | resize 15<cr>' },
              { 'L', ':sb + __FLUTTER_DEV_LOG__ | resize 15<cr>' },
              { 'p', '<cmd>FlutterCopyProfilerUrl<cr>' },
              { 'r', '<cmd>FlutterReload<cr>' },
              { 'R', '<cmd>FlutterRestart<cr>' },
              { 's', '<cmd>lua require("telescope").extensions.flutter.fvm()<cr>' },
              { 'S', '<cmd>lua require("telescope").extensions.flutter.fvm()<cr>' },
              { 'q', '<cmd>FlutterQuit<cr>' },
              { 'Q', '<cmd>FlutterQuit<cr>' },
              { 'O', '<cmd>FlutterOutlineOpen<cr>' },
              { 't', '<cmd>FlutterDevTools<cr>' },
              { 'U', '<cmd>FlutterPubUpgrade<cr>' },
              { 'u', '<cmd>FlutterPubUpgrade<cr>' },
            },
          },
          {
            'g',
            {
              { 'g', '<cmd>lua require("neogit").open({ kind = "split" })<CR>' },
              {
                'h',
                '<cmd> lua require("utils.synstack").get_highlight_groups()<cr>',
                options = { silent = false },
              },
            },
          },
          {
            'l',
            {
              {
                'd',
                {
                  { 'a', '<cmd>AddDependency<CR>' },
                  { 'd', '<cmd>AddDevDependency<CR>' },
                  { 'u', '<cmd>UpdateDependencyLine<CR>' },
                },
              },
              {
                'f',
                '<cmd>lua vim.lsp.buf.formatting()<cr>',
                -- require 'utils.filetype-depend' {
                -- 	lua = function()
                -- 		vim.cmd[[Format]]
                -- 	end,
                -- 	_ = vim.lsp.buf.formatting,
                -- },
              },
            },
          },
          { 'm', {
            { 'p', '<cmd>MarkdownPreview<cr>' },
          } },
          { 'nl', '<cmd>lua vim.cmd("edit " .. vim.lsp.get_log_path())<CR>' },
          { 'r', {
            { 'sb', '<cmd>RustStartStandaloneServerForBuffer<cr>' },
          } },
          {
            's',
            {
              { 'v', '<cmd>source $MYVIMRC<cr>' },
              { 'g', '<cmd>lua require("utils.refresh-package").refresh_ghn()<cr>' },
              { 'w', '<cmd>lua require("spectre").open_visual({select_word=true})<cr>' },
            },
          },
          {
            't',
            {
              { 'o', '<cmd>NvimTreeToggle<CR>' },
              { 'd', '<Plug>(ultest-debug-nearest)<CR>' },
              { 'D', '<Plug>(ultest-debug)<CR>' },
              { 'f', '<Plug>(ultest-run-file)<CR>' },
              { 'h', '<Plug>(ultest-output-show)<CR>' },
              { 'n', '<Plug>(ultest-run-nearest)<CR>' },
              { 's', '<Plug>(ultest-summary-toggle)<CR>' },
              { 'x', '<Plug>(ultest-stop-nearest)<CR>' },
              { 'X', '<Plug>(ultest-stop-file)<CR>' },
            },
          },
          { '<leader>', '<cmd>noh<cr><cr>' },
        },
      },
      { '<C-f>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(1)<cr>' },
      { '<C-b>', '<cmd>lua require("lspsaga.action").smart_scroll_with_saga(-1)<cr>' },
      {
        '<C-q>',
        {
          { '', '<Nop>' },
          { '1', '<Cmd>BufferLineGoToBuffer 1<CR>' },
          { '2', '<Cmd>BufferLineGoToBuffer 2<CR>' },
          { '3', '<Cmd>BufferLineGoToBuffer 3<CR>' },
          { '4', '<Cmd>BufferLineGoToBuffer 4<CR>' },
          { '5', '<Cmd>BufferLineGoToBuffer 5<CR>' },
          { '6', '<Cmd>BufferLineGoToBuffer 6<CR>' },
          { '7', '<Cmd>BufferLineGoToBuffer 7<CR>' },
          { '8', '<Cmd>BufferLineGoToBuffer 8<CR>' },
          { '9', '<Cmd>BufferLineGoToBuffer 9<CR>' },
          { 'k', '<Cmd>BufferLineCycleNext<CR>' },
          { 'j', '<Cmd>BufferLineCyclePrev<CR>' },
          { 'K', '<Cmd>BufferLineMoveNext<CR>' },
          { 'J', '<Cmd>BufferLineMovePrev<CR>' },
          { 'd', '<Cmd>lua require("bufdelete").bufdelete(0)<CR>' },
          { '<C-1>', '<Cmd>BufferLineGoToBuffer 1<CR>' },
          { '<C-2>', '<Cmd>BufferLineGoToBuffer 2<CR>' },
          { '<C-3>', '<Cmd>BufferLineGoToBuffer 3<CR>' },
          { '<C-4>', '<Cmd>BufferLineGoToBuffer 4<CR>' },
          { '<C-5>', '<Cmd>BufferLineGoToBuffer 5<CR>' },
          { '<C-6>', '<Cmd>BufferLineGoToBuffer 6<CR>' },
          { '<C-7>', '<Cmd>BufferLineGoToBuffer 7<CR>' },
          { '<C-8>', '<Cmd>BufferLineGoToBuffer 8<CR>' },
          { '<C-9>', '<Cmd>BufferLineGoToBuffer 9<CR>' },
          { '<C-k>', '<Cmd>BufferLineCycleNext<CR>' },
          { '<C-j>', '<Cmd>BufferLineCyclePrev<CR>' },
          { '<C-d>', '<Cmd>lua require("bufdelete").bufdelete(0)<CR>' },
          { '<C-t>', '<Cmd>BufferLineGroupToggle<CR>' },
          { '<C-g>', '<Cmd>BufferLineGroupClose<CR>' },
        },
      },
      -- { '<Space>', '<Nop>'},
      -- { '<C-q>', '<Nop>'},
      -- { ';', ':', options = { silent = false } },
      -- { ':', ';' },
    },
  },
  {
    mode = 'v',
    options = { noremap = true },
    {
      {
        '<leader>',
        {
          { 'a', '<cmd>C-U>lua require("lsp-fastaction").range_code_action()<cr>' },
          { 's', '<cmd>lua require("spectre").open_visual()<cr>' },
        },
      },
      { 'J', ":m '>+1<cr>gv=gv" },
      { 'K', ":m '<-2<cr>gv=gv" },
    },
  },
  {
    mode = 'c',
    options = { noremap = true, expr = true },
    {
      { '<C-k>', 'wildmenumode() ? "\\<C-p>" : "\\<C-k>"' },
      -- { '<Space>', 'wildmenumode() ? "\\<C-y>" : "\\<Space>"' }
    },
  },
  {
    mode = 'n',
    options = { noremap = false },
    {
      { '<leader>', {
        { 'a', '<cmd>lua require("lsp-fastaction").code_action()<cr>' },
      } },
      { 'gx', 'viW"ay:!open <C-R>a &<cr>' },
      { 'K', '<cmd>lua require("lspsaga.hover").render_hover_doc()<cr>' },
      { 'H', '^', mode = 'nv' },
      { 'L', '$', mode = 'nv' },
      { 'Q', '@q' },
      { 'Y', 'y$' },
      { 'S', '<cmd>lua require("spectre").open()<cr>' },
      { '<C-k>', '<C-p>' },
      { '<C-j>', '<C-n>' },
    },
  },
  {
    mode = 'i',
    options = { noremap = false },
    {
      options = { expr = true },
      { '<C-j>', 'pumvisible() ? "\\<Down>" : "\\<C-j>"' },
      { '<C-k>', 'pumvisible() ? "\\<Up>" : "\\<C-k>"' },
    },
  },
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
