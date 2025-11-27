return {
    { 
        "rebelot/kanagawa.nvim",
--        priority = 1000,  -- Load before other plugins
        config = function()
            vim.cmd.colorscheme "kanagawa"
        end 
    }
}
