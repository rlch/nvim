local packer = nil
local function init()
  if packer == nil then
    packer = require 'packer'
    packer.init { disable_commands = true }
  end

  local use = packer.use
  packer.reset()

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
    config = [[require('config.lsp-config')]],
    after = 'nord',
  }
  use {
    'hrsh7th/nvim-cmp',
    config = [[require('config.nvim-cmp')]],
    requires = {
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'neovim/nvim-lspconfig',
      'L3MON4D3/LuaSnip',
      'windwp/nvim-autopairs',
    },
    --[[ after = {
      'L3MON4D3/LuaSnip',
      'windwp/nvim-autopairs',
    } ]]
  }
  use {
    'akinsho/flutter-tools.nvim',
    config = [[require('config.flutter-tools')]],
    requires = 'hrsh7th/nvim-cmp'
  }
  use {
    '~/Documents/Coding/Personal/dependency-assist.nvim',
    config = function() require'dependency_assist'.setup{} end
  }
  use {
    'glepnir/lspsaga.nvim',
    config = [[require('config.lspsaga')]]
  }
  use {
    'L3MON4D3/LuaSnip',
    config = [[require('config.luasnip')]]
  }
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
    'iamcco/markdown-preview.nvim',
    run = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  }
  use {
    'plasticboy/vim-markdown',
    --[[ config = function()
      vim.g.vim_markdown_math = 1
      vim.g.vim_markdown_strikethrough = 1
      vim.g.vim_markdown_new_list_item_indent = 2
    end ]]
  }
  use 'vim-pandoc/vim-pandoc'
  use 'vim-pandoc/vim-pandoc-syntax'

  -- Aethetics
  use { 'rktjmp/lush.nvim' }
  use {
    '~/Documents/Coding/Personal/nord.nvim',
    as = 'nord',
    requires = { 'rktjmp/lush.nvim' },
    config = function()
      -- vim.cmd 'colorscheme nord'
    end,
  }
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
  use {
    'bkad/CamelCaseMotion',
    config = [[require('config.camelcasemotion')]]
  }
  use 'tpope/vim-surround'
  use {
    'akinsho/bufferline.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      'famiu/bufdelete.nvim'
    },
    config = [[require('config.bufferline')]],
  }

  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup{} end
  }

  -- File-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = [[require('config.nvim-tree')]]
  }

  -- Fuzzy finder
  use 'nvim-lua/popup.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = [[require('config.telescope')]]
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
  use {
    'LionC/nest.nvim',
    config = function()
      require'keymaps'
    end
  }
end


local plugins = setmetatable({}, {
  __index = function(_, key)
    init()
    return packer[key]
  end,
})

return plugins