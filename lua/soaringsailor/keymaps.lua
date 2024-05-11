local map = vim.keymap.set
local command = vim.api.nvim_create_user_command

-- command and mapping to change directory to dir of current buffer
command("CDC", "cd %:p:h", {})
map("n", "<leader>bc", "<cmd>CDC<cr>", { noremap = true, silent = false, desc = "Switch to Buffer Directory" })

-- switch start of line and start of line non-blank
map({ "n", "v", "o" }, "0", "^", { noremap = true, silent = true, desc = "Start of line (non-blank)" })
map({ "n", "v", "o" }, "^", "0", { noremap = true, silent = true, desc = "Start of line" })

-- mappings to add lines
map("n", "<A-o>", "m`o<esc>``", { noremap = true, silent = true, desc = "Create line below" })
map("n", "<A-O>", "m`O<esc>``", { noremap = true, silent = true, desc = "Create line above" })
