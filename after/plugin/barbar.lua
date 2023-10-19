local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "<leader>&", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<leader>é", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
--map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
--map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
-- map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
-- map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<C-q>", "<Cmd>BufferClose<CR>", opts)
map("n", "<leader>qa", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", opts)

-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map("n", '<leader>"', "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<leader>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<leader>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<leader>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<leader>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
