local system = vim.system
return {
  "folke/zen-mode.nvim",
  dependencies = { "rcarriga/nvim-notify" },
  opts = {
    window = {
      backdrop = 0.80, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
      -- height and width can be:
      -- * an absolute number of cells when > 1
      -- * a percentage of the width / height of the editor when <= 1
      -- * a function that returns the width or the height
      width = 120, -- width of the Zen window
      height = 1, -- height of the Zen window
      -- by default, no options are changed for the Zen window
      -- uncomment any of the options below, or add other vim.wo options you want to apply
      options = {
        -- signcolumn = "no", -- disable signcolumn
        -- number = false, -- disable number column
        -- relativenumber = false, -- disable relative numbers
        -- cursorline = false, -- disable cursorline
        -- cursorcolumn = false, -- disable cursor column
        -- foldcolumn = "0", -- disable fold column
        -- list = false, -- disable whitespace characters
      },
    },
    on_open = function(win)
      local fortune = vim.fn.system("fortune")
      if vim.v.shell_error == 0 then
        vim.notify(fortune, "info", { title = "Fortune", timeout = 2000 })
      else
        vim.notify("Error running fortune command (is it installed?)", "error", { title = "Fortune", timeout = 5000 })
      end
    end,
    -- callback where you can add custom code when the Zen window closes
    on_close = function() end,
  },
}
