local status, _ = pcall(vim.cmd, "colorscheme catppuccin-macchiato")
if not status then
	print("Colorschema not found")
	return
end
