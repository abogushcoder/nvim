require("alex.core")
require("nvim-tree").setup({
	filters = {
		custom = { "^/Library/Reminders" }, -- Add any directories you want to ignore here
	},
})
require("alex.lazy")
require("lspconfig").jdtls.setup({
	on_attach = function(client, bufnr)
		client.server_capabilities.semanticTokensProvider = nil
	end,
})

vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = false
vim.g.copilot_filetypes = {
	["*"] = true, -- Enable for all file types
	markdown = true,
	lua = true,
	python = true,
	javascript = true,
}
