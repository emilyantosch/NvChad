local plugins = {
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },
  {
    "phaazon/hop.nvim",
    branch = 'v2',
    lazy = false,
    config = function ()
     require'hop'.setup {} 
    end
  }
}

return plugins
