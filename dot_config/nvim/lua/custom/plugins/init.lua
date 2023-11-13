-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    "assistcontrol/readline.nvim",
    "gbprod/cutlass.nvim",
    config = function()
        require("cutlass").setup({})
    end,
    "ojroques/nvim-osc52"
}
