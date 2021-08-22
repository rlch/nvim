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
