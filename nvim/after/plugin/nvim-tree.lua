local ok, nvimTree = pcall(require, "nvim-tree")
if not ok then
	print("Failed to setup nvim tree")
	return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
	vim.keymap.set("n", "<leader><CR>", api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "%", api.fs.create, opts("Create new file"))
	vim.keymap.set("n", "i", api.fs.rename, opts("Rename file or directory"))
	vim.keymap.set("n", "]", function()
		api.node.navigate.diagnostics.next()
	end, opts("Navigate to next diagnostics"))
	vim.keymap.set("n", "[", function()
		api.node.navigate.diagnostics.prev()
	end, opts("Navigate to next diagnostics"))
	vim.keymap.set("n", "}", function()
		api.node.navigate.sibling.next()
	end, opts("Navigate to next diagnostics"))
	vim.keymap.set("n", "{", function()
		api.node.navigate.sibling.prev()
	end, opts("Navigate to next diagnostics"))
	vim.keymap.set("n", "<leader>x", ":NvimTreeToggle<CR>")
	vim.keymap.set("n", "<leader>t", ":NvimTreeFocus<CR>")
end

-- pass to setup along with your other options
nvimTree.setup({
	modified = {
		enable = true,
	},
	view = {
		side = "left",
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	renderer = {
		root_folder_label = false,
		highlight_git = true,
		highlight_modified = "all",
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "~",
					arrow_open = "-",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	on_attach = my_on_attach,
})
