local packer = nil

local dev_dir = require 'utils.platform-depend' {
  macos = '~/Coding/Personal/',
  linux = '~/Coding/Personal/',
  windows = nil,
}

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
    config = [[require('config.nvim-treesitter')]],
    as = 'treesitter',
  }
  use 'nvim-treesitter/playground'
  use {
    'lewis6991/spellsitter.nvim',
    config = function()
      require('spellsitter').setup()
    end,
    disable = true,
  }

  use {
    'rlch/dart-vim-plugin',
    config = [[require('config.dart-vim-plugin')]],
  }

  use {
    'neovim/nvim-lspconfig',
    as = 'lspconfig',
    config = [[require('config.lsp-config')]],
  }
  use {
    'hrsh7th/nvim-cmp',
    as = 'nvim-cmp',
    config = [[require('config.nvim-cmp')]],
    requires = {
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'petertriho/cmp-git',
      'neovim/nvim-lspconfig',
      'L3MON4D3/LuaSnip',
      'windwp/nvim-autopairs',
      'onsails/lspkind-nvim',
    },
    --[[ after = {
      'L3MON4D3/LuaSnip',
      'windwp/nvim-autopairs',
    } ]]
  }
  -- use {
  --   'akinsho/flutter-tools.nvim',
  --   config = [[require('config.flutter-tools')]],
  --   requires = 'hrsh7th/nvim-cmp',
  -- }
  use {
    dev_dir .. 'flutter-tools.nvim',
    config = [[require('config.flutter-tools')]],
    requires = 'hrsh7th/nvim-cmp',
  }
  use {
    'akinsho/dependency-assist.nvim',
    config = function()
      require('dependency_assist').setup {}
    end,
    disable = true,
  }
  use {
    'tami5/lspsaga.nvim',
    as = 'lspsaga',
    config = [[require('config.lspsaga')]],
  }
  use {
    'L3MON4D3/LuaSnip',
    config = [[require('config.luasnip')]],
  }
  use 'ray-x/lsp_signature.nvim'
  use 'yuezk/vim-js'
  use 'rcarriga/nvim-dap-ui'
  use {
    'mfussenegger/nvim-dap',
    config = [[require('config.dap')]],
  }
  use 'vim-test/vim-test'
  use { 'rcarriga/vim-ultest', run = ':UpdateRemotePlugins' }
  use 'windwp/lsp-fastaction.nvim'
  use 'rlch/friendly-snippets'
  use 'ckipp01/stylua-nvim'
  use 'delphinus/vim-firestore'
  use 'github/copilot.vim'

  -- Markdown
  use 'godlygeek/tabular'
  use {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && npm install',
    setup = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
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
    'norcalli/nvim-colorizer.lua',
    disable = true,
    config = function()
      require('colorizer').setup()
    end,
  }
  use {
    'sainnhe/gruvbox-material',
    as = 'color',
    config = [[require('config.colorscheme')]],
  }

  use {
    'nvim-lualine/lualine.nvim',
    config = [[require('config.lualine')]],
    after = 'color',
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
    config = [[require('config.camelcasemotion')]],
  }
  use 'tpope/vim-surround'
  use {
    'akinsho/bufferline.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      'famiu/bufdelete.nvim',
    },
    config = [[require('config.bufferline')]],
    disable = true,
  }
  --[[ use {
    'aserowy/tmux.nvim',
    config = function()
      require 'tmux'.setup {
        copy_sync = { enable = true },
        navigation = { enable_default_keybindings = true },
        resize = { enable_default_keybindings = false },
      }
    end
  } ]]

  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup {}
    end,
  }

  -- File-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = [[require('config.nvim-tree')]],
  }

  -- Fuzzy finder
  use 'nvim-lua/popup.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = [[require('config.telescope')]],
  }

  -- Git
  use {
    'TimUntersberger/neogit',
    config = [[require('config.neogit')]],
    disable = true,
  }
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = [[require('config.gitsigns')]],
  }

  -- Miscellaneous
  use {
    'b3nj5m1n/kommentary',
    config = [[require('config.kommentary')]],
  }
  use 'tpope/vim-abolish'
  use {
    'windwp/nvim-spectre',
    config = function()
      require('spectre').setup {}
    end,
  }
  use 'folke/which-key.nvim'
  use {
    'LionC/nest.nvim',
    config = function()
      require 'keymaps'
    end,
  }
  use {
    'nvim-neorg/neorg',
    config = [[require('config.neorg')]],
    requires = 'nvim-lua/plenary.nvim',
    after = 'treesitter',
  }
  use {
    dev_dir .. 'project.nvim',
    config = [[require('config.project')]],
    requires = {
      'nvim-telescope/telescope.nvim',
    },
  }
  use {
    'luukvbaal/stabilize.nvim',
    config = function()
      require('stabilize').setup()
    end,
  }

  -- Dev
  use {
    dev_dir .. 'github-notifications.nvim',
    config = [[require('config.github-notifications')]],
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-lualine/lualine.nvim',
      'nvim-telescope/telescope.nvim',
    },
  }
end

local plugins = setmetatable({}, {
  __index = function(_, key)
    init()
    return packer[key]
  end,
})

return plugins
