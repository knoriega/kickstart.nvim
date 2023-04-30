local nvim_api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>t", nvim_api.tree.toggle, { desc = "Toggle project tree" })
