return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.enable('basedpyright')
      vim.lsp.enable('clangd')
      vim.lsp.config('lua_ls', require('lsp.lua_ls'))
      vim.lsp.enable('lua_ls')

      vim.keymap.set("n", "<space>f", function() vim.lsp.buf.format() end)

      vim.api.nvim_create_autocmd('LSPAttach', {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client or (vim.bo.filetype ~= "lua") then return end

          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
            end,
          })
        end,
      })
    end,
  }
}
