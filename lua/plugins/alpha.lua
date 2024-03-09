return {
  "goolord/alpha-nvim",
  -- logo from https://github.com/MaximilianLloyd/ascii.nvim/blob/master/lua/ascii/text/neovim.lua
  opts = function(_, opts)
    local logo = [[
                                         
      ▄   ▄███▄   ████▄     ▄   ▄█ █▀▄▀█ 
       █  █▀   ▀  █   █      █  ██ █ █ █ 
   ██   █ ██▄▄    █   █ █     █ ██ █ ▄ █ 
   █ █  █ █▄   ▄▀ ▀████  █    █ ▐█ █   █ 
   █  █ █ ▀███▀           █  █   ▐    █  
   █   ██                  █▐        ▀   
                           ▐             
                                         
              [ @GoesByJim ]
    ]]
    opts.section.header.val = vim.split(logo, "\n", { true, trimempty = true })
  end,
}
