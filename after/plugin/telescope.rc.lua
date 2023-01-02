local status, telescope = pcall(require, "telescope")
if (not status) then
	print("Telescope is not installed")
	return
end

local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand('%:p:h')
end

vim.keymap.set("n", ";f", builtin.find_files, {})
vim.keymap.set("n", ";r", builtin.live_grep, {})
vim.keymap.set("n", ";b", builtin.buffers, {})
vim.keymap.set("n", "sf", function()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
		layout_config = { height = 30 }
	})
end
)

local fb_actions = telescope.extensions.file_browser.actions

telescope.setup {
	pickers = {
		find_files = {
			hidden = true,
			respect_gitignore = false,
		}
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			mappings = {
				["i"] = {
					-- your custom insert mode mappings
				},
				["n"] = {
					-- your custom normal mode mappings
					["N"] = fb_actions.create,
					["."] = fb_actions.goto_parent_dir,
					["d"] = fb_actions.remove,
					["r"] = fb_actions.rename
				},
			},
		},
	},
}

telescope.load_extension("file_browser")
