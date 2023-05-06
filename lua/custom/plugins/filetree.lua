-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require('neo-tree').setup {
            close_if_last_window = true,
            window = {
                width = 30
            },
            filesystem = {
                filtered_items = {
                    hide_by_name = {
                        "__pycache__",
                    }
                }
            }
        }
        vim.keymap.set("n", "\\", ":Neotree toggle<cr>")
        vim.keymap.set("n", "<leader>gs", ":Neotree float git_status<cr>")
    end,
}
