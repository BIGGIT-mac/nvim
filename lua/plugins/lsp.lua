return {
	{ "williamboman/mason.nvim" },

	{ "williamboman/mason-lspconfig.nvim" },

	{ "WhoIsSethDaniel/mason-tool-installer.nvim" },

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("config.lspconfig")
		end
	},

	{ "b0o/schemastore.nvim" }
}
