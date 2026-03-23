-- Keymaps are automatically loaded on the VeryLazy event
-- Quick escape from insert/visual mode
vim.keymap.set("i", "kj", "<ESC>", { silent = true })
vim.keymap.set("v", "kj", "<ESC>", { silent = true })

-- Escape from terminal mode back to normal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Escape terminal mode" })
-- Obsidian.nvim shortcuts
vim.keymap.set("n", "<leader>ot", "<cmd>ObsidianToday<cr>", { desc = "Open today's note" })
vim.keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "Create new note" })
vim.keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { desc = "Search notes" })
