-- vim.cmd'let g:mapleader = " "'
local g = vim.g
g.mapleader = [[ ]]

local nvim_cmd = vim.api.nvim_command
local cmd = vim.cmd
local o_s = vim.o

local function opt(o, v, scopes)
  scopes = scopes or {o_s}
  for _, s in ipairs(scopes) do s[o] = v end
end

local function autocmd(group, cmds, clear)
  clear = clear == nil and false or clear
  if type(cmds) == 'string' then cmds = {cmds} end
  cmd('augroup ' .. group)
  if clear then cmd [[au!]] end
  for _, c in ipairs(cmds) do cmd('autocmd ' .. c) end
  cmd [[augroup END]]
end

require'autocmd'.setup()

opt('hidden', true)
opt('encoding', 'utf-8')
opt('pumheight', 10)
opt('fileencoding', 'utf-8')
opt('ruler', true)
opt('cmdheight', 1)
opt('mouse', 'a')
opt('splitbelow', true)
opt('splitright', true)
opt('conceallevel', 0)
opt('tabstop', 2)
opt('shiftwidth', 2)
opt('smarttab', true)
opt('expandtab', true)
opt('smartindent', true)
opt('autoindent', true)
opt('laststatus', 2)
opt('background', 'dark')
opt('updatetime', 300)
opt('clipboard', 'unnamedplus')
opt('mmp', 2000)
opt('foldmethod', 'syntax')
opt('foldlevelstart', 20)
opt('autoread', true)
opt('wrap', false)
opt('termguicolors', true)

vim.cmd([[ 
  set iskeyword+=-
  set formatoptions+=t
  set formatoptions-=cr
  set t_Co=256
  set nu rnu
  set nowritebackup
  set noea
  colorscheme nord
]])
cmd [[command! PackerInstall packadd packer.nvim | lua require('plugins').install()]]
cmd [[command! PackerUpdate packadd packer.nvim | lua require('plugins').update()]]
cmd [[command! PackerSync packadd packer.nvim | lua require('plugins').sync()]]
cmd [[command! PackerClean packadd packer.nvim | lua require('plugins').clean()]]
cmd [[command! PackerCompile packadd packer.nvim | lua require('plugins').compile()]]

nvim_cmd(':command! WQ wq')
nvim_cmd(':command! Wq wq')
nvim_cmd(':command! W w')
nvim_cmd(':command! Q q')
nvim_cmd(':command! WA wa')
nvim_cmd(':command! Wa wa')
nvim_cmd(':command! QA qa')
nvim_cmd(':command! Qa qa')

vim.g.termguicolors = true
vim.opt.termguicolors = true
require'color-overrides'.setup()
