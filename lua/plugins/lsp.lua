return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable('basedpyright')
      vim.lsp.enable('clangd')
      vim.lsp.config('lua_ls', require('lsp.lua_ls'))
      vim.lsp.enable('lua_ls')
    end,
  }
}
