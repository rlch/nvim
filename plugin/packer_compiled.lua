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
local package_path_str = "/home/rjm/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/rjm/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/rjm/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/rjm/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/rjm/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
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
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/CamelCaseMotion"
  },
  LuaSnip = {
    config = { "require('config.luasnip')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/cmp_luasnip"
  },
  ["dart-vim-plugin"] = {
    config = { "require('config.dart-vim-plugin')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/dart-vim-plugin"
  },
  ["flutter-tools.nvim"] = {
    config = { "require('config.flutter-tools')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/flutter-tools.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  kommentary = {
    config = { "require('config.kommentary')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lsp-fastaction.nvim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/lsp-fastaction.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "require('config.lspsaga')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('config.lualine')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  neogit = {
    config = { "require('config.neogit')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nest.nvim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nest.nvim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\1\2@\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "require('config.nvim-compe')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-dap"] = {
    config = { "require('config.dap')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.lsp-config')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\fspectre\frequire\0" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require('config.nvim-treesitter')" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["tabout.nvim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/tabout.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-js"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/vim-js"
  },
  ["vim-log-highlighting"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/vim-log-highlighting"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/vim-test"
  },
  ["vim-ultest"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/vim-ultest"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  winresizer = {
    loaded = true,
    path = "/home/rjm/.local/share/nvim/site/pack/packer/start/winresizer"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('config.nvim-treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require('config.nvim-compe')
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
require('config.lualine')
time([[Config for lualine.nvim]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
require('config.kommentary')
time([[Config for kommentary]], false)
-- Config for: neogit
time([[Config for neogit]], true)
require('config.neogit')
time([[Config for neogit]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
require('config.luasnip')
time([[Config for LuaSnip]], false)
-- Config for: nvim-dap
time([[Config for nvim-dap]], true)
require('config.dap')
time([[Config for nvim-dap]], false)
-- Config for: dart-vim-plugin
time([[Config for dart-vim-plugin]], true)
require('config.dart-vim-plugin')
time([[Config for dart-vim-plugin]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
require('config.lspsaga')
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\fspectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('config.lsp-config')
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\1\2@\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: flutter-tools.nvim
time([[Config for flutter-tools.nvim]], true)
require('config.flutter-tools')
time([[Config for flutter-tools.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
