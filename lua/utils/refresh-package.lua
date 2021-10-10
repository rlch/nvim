local M = {}

M.refresh_package = function(regex)
	for k, _ in pairs(package.loaded) do
		if k:match(regex) then
			print(k .. ' refreshed')
			package.loaded[k] = nil
		end
	end
end

M.refresh_ghn = function()
	M.refresh_package 'github'
	require('github-notifications').setup {}
end

return M
