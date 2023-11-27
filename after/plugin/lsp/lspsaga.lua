-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end

saga.setup({
	-- keybinds for navigation in lspsaga window
	scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
	-- use enter to open file with definition preview
	definition = {
		edit = "<CR>",
	},
	ui = {
		colors = {
			normal_bg = "#022746",
		},
	},
})

vim.keymap.set("n", "<leader>cn", "<cmd>Lspsaga diagnostic_jump_next<CR>")
vim.keymap.set("n", "<leader>cp", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
