local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
if not status then
	print("Colorschema not found")
	return
end
