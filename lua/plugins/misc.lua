--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  {
    "snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },

  {
    "nvim-mini/mini.animate",
    enabled = false,
  },

  { "folke/noice.nvim", enabled = false },

  { "bufferline.nvim", enabled = false },

  { "ggandor/leap.nvim", enabled = false },
  { "folke/flash.nvim", enabled = false },

  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "folke/todo-comments.nvim",
    enabled = false,
  },
  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}
