local ok, toogleterm = pcall(require, "toggleterm.terminal")
if not ok then
	print("Toogle term cannot be configured")
	return
end

local Terminal = toogleterm.Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

vim.keymap.set("n", "<leader>lg", function()
	lazygit:toggle()
end, { noremap = true, silent = true })

require("toggleterm").setup({
	shade_terminals = false,
})
