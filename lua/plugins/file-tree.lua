return {
  {
    "folke/snacks.nvim",
    keys = {
      {
        "<leader>b",
        function()
          Snacks.explorer()
        end,
        desc = "Toggle file explorer",
      },
    },
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true,
            layout = {
              layout = {
                position = "right",
              },
            },
          },
        },
      },
    },
  },
}
