print("Hello Oscar")

require("config.settings")
require("config.lazy")

-- Handy shortcuts for running lua
-- Source the current file.
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
-- Run the current line.
vim.keymap.set("n", "<space>x", ".lua<CR>")
-- Run the highlighted lines.
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Highlight on yank autocmd.
vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) text.',
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.cmd('filetype plugin indent on')
