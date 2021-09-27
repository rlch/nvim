HOME = vim.fn.expand('$HOME')
local platform = ''
if vim.fn.has('mac') == 1 then
  platform = 'macOS'
elseif vim.fn.has('unix') == 1 then
  platform = 'Linux'
end

local sumneko_root_path =  HOME .. "/.config/lua-language-server"
local sumneko_binary = HOME .. "/.config/lua-language-server/bin/" .. platform .. "/lua-language-server"

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

require 'lspconfig'.tsserver.setup{}


require'lspconfig'.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
               -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}

require"lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    filetypes = {"lua"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {
                    formatCommand = "lua-format -i --no-keep-simple-function-one-line --no-break-after-operator --column-limit=150 --break-after-table-lb",
                    formatStdin = true
                }
            }
        }
    }
}

