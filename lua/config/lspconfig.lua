local servers = {
	"html",
	"cssls",
	"pyright",
	"lua_ls",
	"taplo",
	"clangd",
	"bashls"
}

local tools = {
	"shellcheck"
}

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
	ensure_installed = vim.list_extend(vim.deepcopy(servers), tools)
})

local configs = require("config.lsp")

for server, config in pairs(configs) do
	vim.lsp.config(server, config)
end

for _, server in ipairs(servers) do
	vim.lsp.enable(server)
end

vim.diagnostic.config({ virtual_text = true })
