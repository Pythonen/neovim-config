return {
  "rauls-kjarners/omp.nvim",
  event = "VeryLazy",
  config = function()
    require("omp").setup()

    vim.keymap.set("n", "<leader>oa", function()
      Snacks.terminal.toggle("omp", {
        win = {
          position = "right",
          width = 0.4,
        },
      })
    end, { desc = "Toggle Oh My Pi" })
  end,
}
