-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/rjm/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/rjm/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/rjm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/rjm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/rjm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  CamelCaseMotion = {
    config = { "require('config.camelcasemotion')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/CamelCaseMotion"
  },
  LuaSnip = {
    config = { "require('config.luasnip')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-git"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  color = {
    after = { "lualine.nvim" },
    loaded = true,
    only_config = true
  },
  ["dart-vim-plugin"] = {
    config = { "require('config.dart-vim-plugin')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/dart-vim-plugin"
  },
  ["flutter-tools.nvim"] = {
    config = { "require('config.flutter-tools')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/flutter-tools.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["github-notifications.nvim"] = {
    config = { "require('config.github-notifications')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/github-notifications.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "require('config.gitsigns')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  kommentary = {
    config = { "require('config.kommentary')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lsp-fastaction.nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/lsp-fastaction.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  lspconfig = {
    config = { "require('config.lsp-config')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/lspconfig"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  lspsaga = {
    config = { "require('config.lspsaga')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/lspsaga"
  },
  ["lualine.nvim"] = {
    config = { "require('config.lualine')" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/opt/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  neorg = {
    config = { "require('config.neorg')" },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/opt/neorg"
  },
  ["nest.nvim"] = {
    config = { "\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\fkeymaps\frequire\0" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/nest.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "require('config.nvim-cmp')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "require('config.dap')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fspectre\frequire\0" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    config = { "require('config.nvim-tree')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "require('config.project')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/project.nvim"
  },
  ["stylua-nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/stylua-nvim"
  },
  ["tabout.nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/tabout.nvim"
  },
  tabular = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    config = { "require('config.telescope')" },
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  treesitter = {
    after = { "neorg" },
    loaded = true,
    only_config = true
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-firestore"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-firestore"
  },
  ["vim-js"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-js"
  },
  ["vim-log-highlighting"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-log-highlighting"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-pandoc"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-pandoc"
  },
  ["vim-pandoc-syntax"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-pandoc-syntax"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-ultest"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/vim-ultest"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  winresizer = {
    loaded = true,
    path = "/Users/rjm/.local/share/nvim/site/pack/packer/start/winresizer"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
require('config.gitsigns')
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
require('config.kommentary')
time([[Config for kommentary]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require('config.nvim-cmp')
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require('config.telescope')
time([[Config for telescope.nvim]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
require('config.dap')
time([[Config for nvim-dap]], false)
-- Config for: lspconfig
time([[Config for lspconfig]], true)
require('config.lsp-config')
time([[Config for lspconfig]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\fspectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: lspsaga
time([[Config for lspsaga]], true)
require('config.lspsaga')
time([[Config for lspsaga]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require('config.nvim-tree')
time([[Config for nvim-tree.lua]], false)
-- Config for: dart-vim-plugin
time([[Config for dart-vim-plugin]], true)
require('config.dart-vim-plugin')
time([[Config for dart-vim-plugin]], false)
-- Config for: flutter-tools.nvim
time([[Config for flutter-tools.nvim]], true)
require('config.flutter-tools')
time([[Config for flutter-tools.nvim]], false)
-- Config for: treesitter
time([[Config for treesitter]], true)
require('config.nvim-treesitter')
time([[Config for treesitter]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
require('config.luasnip')
time([[Config for LuaSnip]], false)
-- Config for: CamelCaseMotion
time([[Config for CamelCaseMotion]], true)
require('config.camelcasemotion')
time([[Config for CamelCaseMotion]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
require('config.project')
time([[Config for project.nvim]], false)
-- Config for: github-notifications.nvim
time([[Config for github-notifications.nvim]], true)
require('config.github-notifications')
time([[Config for github-notifications.nvim]], false)
-- Config for: nest.nvim
time([[Config for nest.nvim]], true)
try_loadstring("\27LJ\2\n'\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\fkeymaps\frequire\0", "config", "nest.nvim")
time([[Config for nest.nvim]], false)
-- Config for: color
time([[Config for color]], true)
require('config.colorscheme')
time([[Config for color]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd neorg ]]

-- Config for: neorg
require('config.neorg')

vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
require('config.lualine')

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
