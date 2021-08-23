source $HOME/.config/nvim/general/autocmd.vim

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" LSP Plugins
" Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'rlch/dart-vim-plugin'
Plug 'nvim-lua/plenary.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'akinsho/flutter-tools.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'L3MON4D3/LuaSnip'
Plug 'ray-x/lsp_signature.nvim'

Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-dap'

Plug 'vim-test/vim-test'
Plug 'rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Aesthetic
Plug 'arcticicestudio/nord-vim'
" Plug 'shaunsingh/nord.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'hoob3rt/lualine.nvim'
Plug 'rbgrouleff/bclose.vim'
Plug 'mhinz/vim-startify'
" Plug 'glepnir/dashboard-nvim'
Plug 'edkolev/tmuxline.vim'
Plug 'mtdl9/vim-log-highlighting'

Plug 'folke/trouble.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'folke/lsp-colors.nvim'

" Traversal
Plug 'simeji/winresizer'
Plug 'abecodes/tabout.nvim'
Plug 'bkad/CamelCaseMotion'

" Fern
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'antoinemadec/FixCursorHold.nvim'

Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'windwp/nvim-autopairs'

" Telescope stuff
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'

" GitHub
" Plug 'pwntester/octo.nvim'

" Other
Plug 'b3nj5m1n/kommentary'
Plug 'tpope/vim-obsession'
Plug 'rlch/friendly-snippets'
" Plug 'tversteeg/registers.nvim', { 'branch': 'main' }
" Plug 'APZelos/blamer.nvim'
Plug 'andweeb/presence.nvim'
Plug 'tpope/vim-abolish'
Plug 'sindrets/diffview.nvim'
Plug 'windwp/nvim-spectre'

call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/mappings.vim

" Plugin config
" luafile $HOME/.config/nvim/lua/plugins/octo.lua
source $HOME/.config/nvim/plugins/tmuxline.vim
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/plugins/fern.vim
source $HOME/.config/nvim/plugins/sneak.vim
source $HOME/.config/nvim/plugins/quickscope.vim
source $HOME/.config/nvim/plugins/camel-case.vim
" source $HOME/.config/nvim/plugins/markdown-preview.vim
source $HOME/.config/nvim/plugins/vim-markdown.vim
source $HOME/.config/nvim/plugins/luasnip.vim
" source $HOME/.config/nvim/plugins/blamer.vim
luafile $HOME/.config/nvim/lua/plugins/kommentary.lua
luafile $HOME/.config/nvim/lua/plugins/nvim-autopairs.lua
luafile $HOME/.config/nvim/lua/plugins/lualine.lua
luafile $HOME/.config/nvim/lua/plugins/trouble.lua
luafile $HOME/.config/nvim/lua/plugins/todo-comments.lua
luafile $HOME/.config/nvim/lua/plugins/presence.lua

" LSP
luafile $HOME/.config/nvim/lua/plugins/luasnip.lua
luafile $HOME/.config/nvim/lua/plugins/lsp-config.lua
source $HOME/.config/nvim/plugins/vim-test.vim
source $HOME/.config/nvim/plugins/lsp-config.vim
source $HOME/.config/nvim/plugins/dart.vim
source $HOME/.config/nvim/plugins/flutter.vim
source $HOME/.config/nvim/plugins/nvim-compe.vim
luafile $HOME/.config/nvim/lua/plugins/nvim-compe.lua
luafile $HOME/.config/nvim/lua/plugins/flutter-tools.lua
luafile $HOME/.config/nvim/lua/plugins/lspsaga.lua
luafile $HOME/.config/nvim/lua/plugins/dap.lua
source $HOME/.config/nvim/plugins/dap.vim
luafile $HOME/.config/nvim/lua/plugins/nvim-treesitter.lua
luafile $HOME/.config/nvim/lua/plugins/diffview.lua

set termguicolors
source $HOME/.config/nvim/general/color-overrides.vim
