return {
	{
		"jalvesaq/Nvim-R",
		ft = { "r", "rmd", "rnw", "Rd", "qmd" }, -- Load only for specific R-related file types
		config = function()
			vim.g.R_assign = 0 -- Sets assignment operator to `<-` instead of `=`
			vim.g.R_term = "tmux"

			-- Enable sending code to a specific Tmux pane
			vim.g.R_tmux_split = 1

			-- Specify the Tmux pane ID where RStudio is running (replace '1' with the actual pane ID)
			vim.g.R_tmux_pane = "1" -- Make sure to adjust '1' to the correct Tmux pane number for RStudio

			-- Additional configuration options can be added here
		end,
	},
}
