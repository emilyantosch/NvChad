local plugins = {
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },
  {
    "neogitOrg/neogit",
    dependencies = 'nvim-lua/plenary.nvim',
    lazy = false
  },
  {
   "theprimeagen/harpoon",
   lazy = false,
    config = function ()
     require("core.utils").load_mappings("harpoon") 
    end
  },
  {
    "phaazon/hop.nvim",
    branch = 'v2',
    lazy = false,
    config = function ()
      require("core.utils").load_mappings("hop")
     require'hop'.setup {} 
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function ()
      return require "custom.configs.null-ls"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "mypy",
        "ruff",
        "pyright",
        "black",
      }
    }  
  }
}

return plugins
