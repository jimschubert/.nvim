return {
  "folke/noice.nvim",
  event = "VeryLazy",

  keys = {
    { "<leader>ne", "<cmd>NoiceErrors<cr>" },
    { "<leader>nh", "<cmd>NoiceHistory<cr>" },
  },

  opts = {
    presets = {
      lsp_doc_border = true,
    },
    lsp = {
      progress = {
        enabled = true,
      },
    },
    messages = {
      enabled = false,
    },
  },
}
