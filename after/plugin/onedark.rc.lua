local status, onedark = pcall(require, "onedark")
if (not status) then
	print("Onedark has not been installed")
	return
end

onedark.setup {
	style = "deep",
	code_style = {
		comments = "italic",
		variables = "bold",
		functions = "bold",
		strings = "none",
		keywords = "italic",
	}
}

onedark.load()
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
