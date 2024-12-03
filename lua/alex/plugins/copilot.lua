return {
	{
		"github/copilot.vim",
		config = function()
			vim.g.copilot_no_tab_map = true -- Optional: Disable default tab mapping
			vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
		end,
	},
}
