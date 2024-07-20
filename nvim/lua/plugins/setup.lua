local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  --- Colour scheme
  "rose-pine/neovim",

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-telescope/telescope-live-grep-args.nvim",
      "AckslD/nvim-neoclip.lua",
      "nvim-telescope/telescope-ui-select.nvim",
      "debugloop/telescope-undo.nvim",
      {
        "aaronhallaert/advanced-git-search.nvim",
        dependencies = {
          "tpope/vim-fugitive",
          "tpope/vim-rhubarb",
        },
      },
    },
  },

  -- Treesitter
  "nvim-treesitter/nvim-treesitter",

  -- LSP
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
      -- LSP Support
      { "neovim/nvim-lspconfig" },
      "williamboman/mason.nvim",
      { "williamboman/mason-lspconfig.nvim" },

      -- Autocompletion
      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
      { "saadparwaiz1/cmp_luasnip" },
    },
  },

  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- harpoon
  {
    "theprimeagen/harpoon",
  },

  -- Lua line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  -- Formatter
  {
    "stevearc/conform.nvim",
  },

  -- Linting
  {
    "mfussenegger/nvim-lint",
  },

  -- Git workflow
  {
    "akinsho/toggleterm.nvim", -- toogle term for lazy git
    "lewis6991/gitsigns.nvim",
  },

  -- Other productivity plugins
  {
    "kylechui/nvim-surround",
    version = "*",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
  },
  {
    "windwp/nvim-autopairs",
  },

  -- Auto commenting plugin
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    }
  }


})
