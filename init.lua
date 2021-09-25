local g, fn = vim.g, vim.fn
local cmd = vim.cmd
local o_s = vim.o
local map_key = vim.api.nvim_set_keymap


local function opt(o, v, scopes)
  scopes = scopes or {o_s}
  for _, s in ipairs(scopes) do s[o] = v end
end

local function autocmd(group, cmds, clear)
  clear = clear == nil and false or clear
  if type(cmds) == 'string' then cmds = {cmds} end
  cmd('augroup ' .. group)
  if clear then cmd [[au!]] end
  for _, c in ipairs(cmds) do cmd('autocmd ' .. c) end
  cmd [[augroup END]]
end

local function map(modes, lhs, rhs, opts)
  opts = opts or {}
  opts.noremap = opts.noremap == nil and true or opts.noremap
  if type(modes) == 'string' then modes = {modes} end
  for _, mode in ipairs(modes) do map_key(mode, lhs, rhs, opts) end
end

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

require'autocmd'.setup()

g.mapleader = [[ ]]

opt('hidden', true)
opt('encoding', 'utf-8')
opt('pumheight', 10)
opt('fileencoding', 'utf-8')
opt('ruler', true)
opt('cmdheight', 1)
opt('mouse', 'a')
opt('splitbelow', true)
opt('splitright', true)
opt('conceallevel', 0)
opt('tabstop', 2)
opt('shiftwidth', 2)
opt('smarttab', true)
opt('expandtab', true)
opt('smartindent', true)
opt('autoindent', true)
opt('laststatus', 2)
opt('cursorline', true)
opt('background', 'dark')
opt('updatetime', 300)
opt('clipboard', 'unnamedplus')
opt('mmp', 2000)
opt('foldmethod', 'syntax')
opt('foldlevelstart', 20)
opt('autoread', true)

vim.cmd([[ 

  set iskeyword+=-                      	" treat dash separated words as a word text object"
  set t_Co=256                            " Support 256 colors
  set nu rnu                              " Line numbers
  set formatoptions-=cr                   " Enables comment completion
  set nobackup
  set nowritebackup
  set noea

  colorscheme nord
]])

require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Foundation
  use 'nvim-lua/plenary.nvim'

  -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = [[require('config.nvim-treesitter')]]
  }
  use 'nvim-treesitter/playground'
  use {
    'rlch/dart-vim-plugin',
    config = [[require('config.dart-vim-plugin')]]
  }
  use {
    'neovim/nvim-lspconfig',
    config = [[require('config.lsp-config')]]
  }
  use {
    'hrsh7th/nvim-compe',
    config = [[require('config.nvim-compe')]]
  }
  use {
    'akinsho/flutter-tools.nvim',
    config = [[require('config.flutter-tools')]]
}
  use {
    'glepnir/lspsaga.nvim',
    config = [[require('config.lspsaga')]]
  }
  use 'L3MON4D3/LuaSnip'
  use 'ray-x/lsp_signature.nvim'
  use 'yuezk/vim-js'
  use 'rcarriga/nvim-dap-ui'
  use {
    'mfussenegger/nvim-dap',
    config = [[require('config.dap')]]
  }
  use 'vim-test/vim-test'
  use { 'rcarriga/vim-ultest', run = ':UpdateRemotePlugins' }
  use 'windwp/lsp-fastaction.nvim'
  use 'rlch/friendly-snippets'

  -- Markdown
  use 'godlygeek/tabular'
  use {
    'plasticboy/vim-markdown',
    --[[ config = function()
      vim.g.vim_markdown_math = 1
      vim.g.vim_markdown_strikethrough = 1
      vim.g.vim_markdown_new_list_item_indent = 2
    end ]]
  }

  -- Aethetics
  use 'arcticicestudio/nord-vim'
  use 'ryanoasis/vim-devicons'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'hoob3rt/lualine.nvim',
    config = [[require('config.lualine')]]
  }
  --[[ use {
  --  'edkolev/tmuxline.vim',
  --  config = [[require('config.tmuxline')]]
  --} ]]
  use 'mtdl9/vim-log-highlighting'

  -- Traversal
  use 'simeji/winresizer'
  use 'abecodes/tabout.nvim'
  use 'bkad/CamelCaseMotion'
  use 'tpope/vim-surround'

  use {
    'windwp/nvim-autopairs',
    setup = function() require'nvim-autopairs'.setup{} end
  }

  -- File-tree
  use {
    'lambdalisue/fern.vim',
    setup = [[require('config.fern')]]
  }
  use 'lambdalisue/fern-hijack.vim'
  -- TODO: fix
  -- use 'lambdalisue/fern-renderer-nerdfont.vim'
  -- use 'lambdalisue/fern-git-status.vim'
  use 'lambdalisue/nerdfont.vim'
  use 'antoinemadec/FixCursorHold.nvim'

  -- Fuzzy finder
  use 'nvim-lua/popup.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    config = function() require'telescope'.setup{} end
  }

  -- Git
  use {
    'TimUntersberger/neogit',
    config = [[require('config.neogit')]]
  }

  -- Miscellaneous
  use {
    'b3nj5m1n/kommentary',
    config = [[require('config.kommentary')]]
  }
  use 'tpope/vim-abolish'
  use {
    'windwp/nvim-spectre',
    config = function() require'spectre'.setup{} end
  }
  use 'folke/which-key.nvim'
  use 'LionC/nest.nvim'
end)

vim.g.termguicolors = true
require'color-overrides'.setup()
require'keymaps'
