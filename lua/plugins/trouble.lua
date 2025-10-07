return {
  "folke/trouble.nvim",
  -- change trouble config
  -- keys = {
  --   { "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>" },
  --   { "<leader>[t", "<cmd>Trouble next<cr>" },
  --   { "<leader>]t", "<cmd>Trouble previous<cr>" },
  -- },
  keys = {
    { "<leader>tt", "<cmd>Trouble diagnostics toggle<cr>" },
    {
      "[t",
      function()
        if require("trouble").is_open() then
          require("trouble").prev({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cprev)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "Previous Trouble/Quickfix Item",
    },
    {
      "]t",
      function()
        if require("trouble").is_open() then
          require("trouble").next({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cnext)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "Next Trouble/Quickfix Item",
    },
  },
}
