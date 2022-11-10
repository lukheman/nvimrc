local command = vim.api.nvim_command
local keymap = vim.api.nvim_set_keymap

local M = {}

M.filetypes = function(filetype, opts)
	local cmd = { "autocmd FileType " .. filetype .. " setlocal" }
	for opt, value in pairs(opts) do
		if value == true then
			table.insert(cmd, opt)
		else
			table.insert(cmd, opt .. "=" .. value)
		end
	end
	command(table.concat(cmd, " "))
end

M.highlight = function(group, opts)
	if type(opts) == "table" then
		local cmd = { group }
		if opts.fg then
			table.insert(cmd, "guifg=" .. opts.fg)
		end
		if opts.bg then
			table.insert(cmd, "guibg=" .. opts.bg)
		end
		if opts.gui then
			table.insert(cmd, "gui=" .. opts.gui)
		end
		if opts.guisp then
			table.insert(cmd, "guisp=" .. opts.guisp)
		end
		command("hi " .. table.concat(cmd, " "))
	elseif type(opts) == "string" then
		command("hi! link " .. group .. " " .. opts)
	end
end

M.map = function(mode, key, cmd, opt)
	local options = { noremap = true, silent = true }
	if opt then
		options = opt
	end

	keymap(mode, key, cmd, options)
end


M.prequire = function(...)
	local status, lib = pcall(require, ...)
	if status then
		return lib
	end
	return nil
end

return M
