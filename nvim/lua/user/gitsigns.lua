local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
	return
end

vim.cmd([[ highlight GitSignsAdd    guifg=#6a9955 ]])
vim.cmd([[ highlight GitSignsChange guifg=#569cd6 ]])
vim.cmd([[ highlight GitSignsDelete guifg=red ]])

gitsigns.setup({
	signs = {
		add = { hl = "GitSignsAdd", text = "┃", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
		change = { hl = "GitSignsChange", text = "┃", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
		delete = { hl = "GitSignsDelete", text = "┃", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		topdelete = { hl = "GitSignsDelete", text = "┃", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		changedelete = { hl = "GitSignsChange", text = "┃", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
	},
})
