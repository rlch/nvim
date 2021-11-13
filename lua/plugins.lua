local dev_dir = require 'utils.platform-depend' {
  macos = '~/Coding/Personal/',
  linux = '~/Coding/Personal/',
  windows = nil,
}

-- require 'impatient'

require('packer').startup {
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

    -- Foundation
    use {
      'nvim-lua/plenary.nvim',
      as = 'plenary',
    }

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
    use 'delphinus/vim-firestore'
    use {
      'github/copilot.vim',
      config = [[require('config.copilot')]],
    }
    use { 'ckipp01/stylua-nvim' }

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
    use {
      'filipdutescu/renamer.nvim',
      branch = 'master',
      requires = 'plenary',
      config = [[require('config.renamer')]],
    }

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
    use {
      'abecodes/tabout.nvim',
      config = function()
        require('tabout').setup {
          completion = false,
          ignore_beginning = false,
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
      wants = { 'treesitter' },
      after = { 'nvim-cmp' },
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
    use {
      'dstein64/vim-startuptime',
      cmd = 'StartupTime',
      config = function()
        vim.g.startuptime_tries = 15
        vim.g.startuptime_exe_args = { '+let g:auto_session_enabled = 0' }
      end,
    }
    use {
      'rmagatti/auto-session',
      config = function()
        require('auto-session').setup {
          auto_session_root_dir = ('%s/session/auto/'):format(vim.fn.stdpath 'data'),
        }
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
      requires = 'plenary',
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
      requires = { 'plenary' },
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
      requires = 'plenary',
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
    use {
      'AckslD/nvim-neoclip.lua',
      config = function()
        require('neoclip').setup()
        require('telescope').load_extension 'neoclip'
      end,
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
  config = {
    compile_path = vim.fn.stdpath 'config' .. '/lua/packer_compiled.lua',
  },
}
