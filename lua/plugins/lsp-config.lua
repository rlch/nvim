require 'lspconfig'.yamlls.setup{
  settings = {
    yaml = {
      format = {
        enable = true,
        singleQuote = true
      }
    }
  }
}

require 'lspconfig'.pyright.setup{}

require 'lspconfig'.jsonls.setup {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    }
}

require'lspconfig'.tsserver.setup{}
