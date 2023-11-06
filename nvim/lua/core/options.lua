local options = {
	-- line numbers
	relativenumber = true,
	nu = true,

	-- tabs and indentation
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	autoindent = true,

	-- line wrapping
	wrap = true,

	-- search settings
	ignorecase = true,
	smartcase = true,

	-- apperence of the terminal
	termguicolors = true,
	background = "dark",
	signcolumn = "yes",

	-- backspace
	backspace = "indent,eol,start",

	-- spacce for neovim command line for display
	cmdheight = 3,

	-- split windows to right and down
	splitbelow = true,
	splitright = true,

	-- Scroll offset
	scrolloff = 8,
}

for key, value in pairs(options) do
	vim.opt[key] = value
end
