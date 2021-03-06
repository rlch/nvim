local fn = vim.fn

local dev_dir = require 'utils.platform-depend' {
  macos = '~/Coding/Personal/',
  linux = '~/Coding/Personal/',
  windows = nil,
}

-- require 'impatient'
local PACKER_COMPILED_PATH = fn.stdpath 'cache' .. '/packer/packer_compiled.lua'

require('packer').startup {
  function(use)
    -- Packer
    use {
      'wbthomason/packer.nvim',
      'lewis6991/impatient.nvim',
    }

    -- Common
    use {
      {
        'nvim-lua/plenary.nvim',
        as = 'plenary',
      },
      {
        'nvim-lua/popup.nvim',
        as = 'popup',
      },
    }
    -- Fuzzy finder
    use {
      'nvim-telescope/telescope.nvim',
      requires = 'plenary',
      config = [[require('config.telescope')]],
    }

    -- Treesitter
    use {
      {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = [[require('config.nvim-treesitter')]],
        as = 'nvim-treesitter',
      },
      'nvim-treesitter/playground',
      {
        'lewis6991/spellsitter.nvim',
        config = function()
          require('spellsitter').setup()
        end,
        disable = true,
      },
    }

    -- Dart / Flutter
    use {
      {
        'rlch/dart-vim-plugin',
        config = [[require('config.dart-vim-plugin')]],
      },
      {
        dev_dir .. 'flutter-tools.nvim',
        config = [[require('config.flutter-tools')]],
        requires = 'hrsh7th/nvim-cmp',
      },
      {
        'akinsho/dependency-assist.nvim',
        config = function()
          require('dependency_assist').setup {}
        end,
        disable = true,
      },
    }

    -- Rust
    use {
      'simrat39/rust-tools.nvim',
      requires = 'neovim/nvim-lspconfig',
      wants = {
        'popup',
        'plenary',
        'nvim-telescope/telescope.nvim',
      },
      config = [[require('config.rust-tools')]],
    }

    -- LSP
    use {
      {
        'neovim/nvim-lspconfig',
        config = [[require('config.lsp-config')]],
      },
      'ray-x/lsp_signature.nvim',
      'rcarriga/nvim-dap-ui',
      {
        'mfussenegger/nvim-dap',
        config = [[require('config.dap')]],
      },
      {
        'filipdutescu/renamer.nvim',
        branch = 'master',
        requires = 'plenary',
        config = [[require('config.renamer')]],
      },
      'ckipp01/stylua-nvim',
    }

    -- Snippets
    use {
      {
        'L3MON4D3/LuaSnip',
        config = [[require('config.luasnip')]],
      },
      dev_dir ..'friendly-snippets',
    }

    -- Autocomplete
    use {
      {
        'hrsh7th/nvim-cmp',
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
      },
      {
        'github/copilot.vim',
        config = [[require('config.copilot')]],
      },
    }

    -- Tests
    use {
      'vim-test/vim-test',
      { 'rcarriga/vim-ultest', run = ':UpdateRemotePlugins' },
    }

    -- UI + Highlighting
    use {
      dev_dir .. 'lsp-fastaction.nvim',
      {
        'tami5/lspsaga.nvim',
        as = 'lspsaga',
        config = [[require('config.lspsaga')]],
      },
      {
        'norcalli/nvim-colorizer.lua',
        disable = true,
        config = function()
          require('colorizer').setup()
        end,
      },
      {
        'sainnhe/gruvbox-material',
        as = 'colorscheme',
        config = [[require('config.colorscheme')]],
      },
      {
        'nvim-lualine/lualine.nvim',
        config = [[require('config.lualine')]],
        after = 'colorscheme',
      },
      'mtdl9/vim-log-highlighting',
      {
        'luukvbaal/stabilize.nvim',
        config = function()
          require('stabilize').setup()
        end,
      },
    }

    -- Markdown
    use {
      'godlygeek/tabular',
      {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        setup = function()
          vim.g.mkdp_filetypes = { 'markdown' }
        end,
        ft = { 'markdown' },
      },
      use {
        'plasticboy/vim-markdown',
        config = function()
          vim.g.vim_markdown_math = 1
          vim.g.vim_markdown_strikethrough = 1
          vim.g.vim_markdown_new_list_item_indent = 2
        end,
      },
      'vim-pandoc/vim-pandoc',
      'vim-pandoc/vim-pandoc-syntax',
    }

    -- Traversal & motion
    use {
      'simeji/winresizer',
      {
        'bkad/CamelCaseMotion',
        config = [[require('config.camelcasemotion')]],
      },
      'tpope/vim-surround',
      {
        'abecodes/tabout.nvim',
        config = function()
          require('tabout').setup {
            tabkey = '',
            -- backwards_tabkey = '',
            act_as_tab = true,
            act_as_shift_tab = true,
            completion = false,
            ignore_beginning = true,
            tabouts = {
              { open = "'", close = "'" },
              { open = '"', close = '"' },
              { open = '`', close = '`' },
              { open = '(', close = ')' },
              { open = '[', close = ']' },
              { open = '{', close = '}' },
            },
          }
        end,
        wants = { 'nvim-treesitter' },
        after = { 'nvim-cmp' },
      },
      {
        'akinsho/bufferline.nvim',
        requires = {
          'kyazdani42/nvim-web-devicons',
          'famiu/bufdelete.nvim',
        },
        config = [[require('config.bufferline')]],
        disable = true,
      },
      {
        'windwp/nvim-autopairs',
        config = function()
          require('nvim-autopairs').setup {}
        end,
      },
      {
        'b3nj5m1n/kommentary',
        config = [[require('config.kommentary')]],
      },
      'tpope/vim-abolish',
      'ggandor/lightspeed.nvim',
    }

    -- Diagnostics & utilities
    use {
      'dstein64/vim-startuptime',
      cmd = 'StartupTime',
      config = function()
        vim.g.startuptime_tries = 15
        vim.g.startuptime_exe_args = { '+let g:auto_session_enabled = 0' }
      end,
    }

    -- Project management
    use {
      {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[require('config.nvim-tree')]],
      },
      {
        'rmagatti/auto-session',
        config = function()
          require('auto-session').setup {
            auto_session_root_dir = ('%s/session/auto/'):format(vim.fn.stdpath 'data'),
          }
        end,
      },
      {
        'nvim-neorg/neorg',
        config = [[require('config.neorg')]],
        requires = 'plenary',
        after = 'nvim-treesitter',
      },
      {
        dev_dir .. 'project.nvim',
        config = [[require('config.project')]],
        requires = {
          'nvim-telescope/telescope.nvim',
        },
      },
    }

    -- Git
    use {
      {
        'lewis6991/gitsigns.nvim',
        requires = { 'plenary' },
        config = [[require('config.gitsigns')]],
      },
      {
        'sindrets/diffview.nvim',
        requires = 'plenary',
        config = [[require('config.diffview')]],
        disable = true,
      },
      { 'tpope/vim-fugitive' },
    }
    -- Configuration
    use {
      'folke/which-key.nvim',
      {
        'LionC/nest.nvim',
        config = function()
          require 'keymaps'
        end,
      },
    }

    -- Miscellaneous
    use {
      {
        'windwp/nvim-spectre',
        config = function()
          require('spectre').setup {}
        end,
      },
      {
        'AckslD/nvim-neoclip.lua',
        config = function()
          require('neoclip').setup()
          require('telescope').load_extension 'neoclip'
        end,
      },
    }

    -- Dev
    use {
      dev_dir .. 'github-notifications.nvim',
      config = [[require('config.github-notifications')]],
      requires = {
        'plenary',
        'nvim-lualine/lualine.nvim',
        'nvim-telescope/telescope.nvim',
      },
    }
  end,
  log = { level = 'info' },
  config = {
    compile_path = PACKER_COMPILED_PATH,
    profile = {
      enable = true,
      threshold = 1,
    },
  },
}

if not vim.g.packer_compiled_loaded and vim.loop.fs_stat(PACKER_COMPILED_PATH) then
  vim.cmd(string.format('source %s', PACKER_COMPILED_PATH))
  vim.g.packer_compiled_loaded = true
end
