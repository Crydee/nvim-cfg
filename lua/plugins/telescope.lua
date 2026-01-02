return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- optional but recommended
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      require('telescope').setup {
        pickers = {
          find_files = {
            theme = "ivy"
          }
        }
      }
      vim.keymap.set('n', '<space>fd', require('telescope.builtin').find_files)
      vim.keymap.set('n', '<space>en', function()
        require('telescope.builtin').find_files {
          cwd = vim.fn.stdpath('config')
        }
      end
      )
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<space>fr', require('telescope.builtin').lsp_references)
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end,
  }
}
