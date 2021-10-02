return {
  setup = function()
    vim.cmd([[ 
      augroup pac>ker_user_config
        autocmd!
        autocmd BufWritePost plugins.lua so % | PackerCompile
      augroup end
    ]])
  end
}
