return {
  "tamton-aquib/duck.nvim",
  keys = {
    { "<leader>hd", "<cmd>HatchDuck<cr>", desc = "Hatch Duck" },
    { "<leader>hc", "<cmd>HatchCat<cr>", desc = "Hatch Cat" },
    { "<leader>hr", "<cmd>HatchRawr<cr>", desc = "Hatch Rawr" },
    { "<leader>hs", "<cmd>HatchSnail<cr>", desc = "Hatch Snail" },
    { "<leader>hk", "<cmd>HatchKill<cr>", desc = "Kill last one" },
    { "<leader>ha", "<cmd>HatchKillAll<cr>", desc = "Kill 'em all" },
  },
  init = function()
    local wk = require("which-key")
    wk.register({ ["<leader>h"] = { name = "+hatch" } })

    vim.api.nvim_create_user_command("HatchDuck", function()
      require("duck").hatch("🦆", 5)
    end, {})
    vim.api.nvim_create_user_command("HatchCat", function()
      require("duck").hatch("🐈", 5)
    end, {})
    vim.api.nvim_create_user_command("HatchRawr", function()
      require("duck").hatch("🦖", 10)
    end, {})
    vim.api.nvim_create_user_command("HatchSnail", function()
      require("duck").hatch("🐌", 0.5)
    end, {})
    vim.api.nvim_create_user_command("HatchKill", function()
      require("duck").cook()
    end, {})
    vim.api.nvim_create_user_command("HatchKillAll", function()
      require("duck").cook_all()
    end, {})
  end,
}
