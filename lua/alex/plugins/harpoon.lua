return {
	-- Include plenary.nvim as it's a dependency for Harpoon
	{
		"nvim-lua/plenary.nvim",
		lazy = true, -- Optional: Load only when required
	},
	-- Add Harpoon plugin
	{
		"ThePrimeagen/harpoon",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("harpoon").setup({
				-- Optional: Add your custom configuration here
				menu = {
					width = vim.api.nvim_win_get_width(0) - 4,
				},
			})

			-- Define keybindings for Harpoon
			vim.keymap.set("n", "<leader>ha", function()
				require("harpoon.mark").add_file()
			end, { desc = "Add file to Harpoon" })
			vim.keymap.set("n", "<leader>hm", function()
				require("harpoon.ui").toggle_quick_menu()
			end, { desc = "Toggle Harpoon menu" })
			vim.keymap.set("n", "<leader>hn", function()
				require("harpoon.ui").nav_next()
			end, { desc = "Navigate to next Harpoon mark" })
			vim.keymap.set("n", "<leader>hp", function()
				require("harpoon.ui").nav_prev()
			end, { desc = "Navigate to previous Harpoon mark" })
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h1",
				":lua require('harpoon.ui').nav_file(1)<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h2",
				":lua require('harpoon.ui').nav_file(2)<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h3",
				":lua require('harpoon.ui').nav_file(3)<CR>",
				{ noremap = true, silent = true }
			)
			vim.api.nvim_set_keymap(
				"n",
				"<leader>h4",
				":lua require('harpoon.ui').nav_file(4)<CR>",
				{ noremap = true, silent = true }
			)
		end,
	},
}
