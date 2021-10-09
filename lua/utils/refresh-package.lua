local M = {}

M.refresh_package = function(name)
  for k in pairs(package.loaded) do
    if k:match('^' .. name) then
      package.loaded[k] = nil
    end
  end
end

M.refresh_ghn = function()
  M.refresh_package('github-notifications.nvim')
  require('github-notifications').setup()
end

return M
