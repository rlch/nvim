return {
  setup = function()
    --- TODO: am i dumb?
    vim.cmd([[ 
      augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua so % | PackerCompile
      augroup end
    ]])
  end
}
