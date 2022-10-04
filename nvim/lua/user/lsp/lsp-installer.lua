local status_ok_mason, mason = pcall(require, "mason")
if not status_ok_mason then
	return
end

local status_ok_masonlsp, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok_masonlsp then
	return
end

local servers = {
	"omnisharp",
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"bashls",
	"jsonls",
	"yamlls",
	"gopls",
	"pyright",
	"tailwindcss",
	"rust_analyzer",
	"clangd",
}

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

mason_lspconfig.setup({
	ensure_installed = servers,
})

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("user.lsp.handlers").on_attach,
		capabilities = require("user.lsp.handlers").capabilities,
	}

	if server == "sumneko_lua" then
		local sumneko_opts = require("user.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server == "omnisharp" then
		local omnisharp_opts = require("user.lsp.settings.omnisharp")
		opts = vim.tbl_deep_extend("force", omnisharp_opts, opts)
	end

	lspconfig[server].setup(opts)
end
