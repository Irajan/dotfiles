local ok, rosePine = pcall(require, "rose-pine")
if not ok then
  print("Failed to setup rose pine theme")
  return
end

rosePine.setup({
  --- @usage 'auto'|'main'|'moon'|'dawn'
  variant = "moon",
  --- @usage 'main'|'moon'|'dawn'
  dark_variant = "auto",
  bold_vert_split = false,
  dim_nc_background = true,
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,

  --- @usage string hex value or named color from rosepinetheme.com/palette
  groups = {
    background = "base",
    background_nc = "nc",
    panel = "surface",
    panel_nc = "base",
    border = "highlight_med",
    comment = "muted",
    link = "iris",
    punctuation = "subtle",

    error = "love",
    hint = "iris",
    info = "foam",
    warn = "gold",

    headings = {
      h1 = "iris",
      h2 = "foam",
      h3 = "rose",
      h4 = "gold",
      h5 = "pine",
      h6 = "foam",
    },
  },

  -- Change specific vim highlight groups
  -- https://github.com/rose-pine/neovim/wiki/Recipes
  highlight_groups = {
    ColorColumn = { bg = "pine" },

    -- Blend colours against the "base" background
    CursorLine = { bg = "base", fg = "iris", blend = 10 },
    StatusLine = { fg = "foam", bg = "rose", blend = 10 },

    -- By default each group adds to the existing config.
    -- If you only want to set what is written in this config exactly,
    -- you can set the inherit option:
    Search = { bg = "gold", inherit = false },
  },
})

-- Set colorscheme after options
vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor20-Cursor,a:blinkon100"
vim.cmd("colorscheme rose-pine")

function ClearBackground()
  vim.api.nvim_set_hl(0, "CmdLine", { fg = "#000000", bg = "#000000" })
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "Cursor", { fg = "#ffffff", bg = "#ffffff" })
end

ClearBackground()

function MakeThemeDark()
  -- TODO Swith to dark theme
  vim.cmd("colorscheme rose-pine-moon")
  vim.api.nvim_set_hl(0, "Normal", { bg = "black", fg = "#ffffff" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "black" })
  vim.api.nvim_set_hl(0, "Cursor", { fg = "#ffffff", bg = "#ffffff" })
end

function MakeThemeLight()
  vim.cmd("colorscheme rose-pine-dawn")
  vim.api.nvim_set_hl(0, "Normal", { bg = "white", fg = "#000000" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "white" })
  vim.api.nvim_set_hl(0, "Cursor", { fg = "#000000", bg = "#000000" })
end

vim.keymap.set("n", "<A-c>", ClearBackground, {})
vim.keymap.set("n", "<A-d>", MakeThemeDark, {})
vim.keymap.set("n", "<A-l>", MakeThemeLight, {})
