return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config('lua_ls', require('lsp.lua_ls'))
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('basedpyright')
    end,
  }
}
