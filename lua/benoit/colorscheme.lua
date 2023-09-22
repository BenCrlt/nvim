local status, _ = pcall(vim.cmd, "colorscheme dracula-soft")
if not status then
	print("Colorschema not found")
	return
end
