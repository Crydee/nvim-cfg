-- Common settings I always want
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.api.nvim_set_hl(0, 'CursorLine', {
    ctermbg = nil,      -- Terminal color code (236 is a gray)
    cterm = { underline = true },
})
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
