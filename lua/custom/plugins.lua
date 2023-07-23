local plugins = {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = {{ "nvim-lua/plenary.nvim" }, {"nvim-neorg/neorg-telescope"}},
    lazy = false,
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/projects/notes",
              },
              default_workspace = "notes",
            },
          },
          ["core.integrations.telescope"] = {},
        },
      }
    end, 
  },
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },
  {
  "iamcco/markdown-preview.nvim",
    ft = {
      "markdown",
      "md"
    },
   config = function()
   end,
  },
  {
  "kylechui/nvim-surround",
  lazy = false,
    config = function()
      require("nvim-surround").setup({
      keymaps = {
          insert = "<C-g>s",
          insert_line = "<C-g>S",
          normal = "ys",
          normal_cur = "yss",
          normal_line = "yS",
          normal_cur_line = "ySS",
          visual = "S",
          visual_line = "gS",
          delete = "ds",
          change = "cs",
    },
      })
    end
  },
  {
  "lervag/vimtex",
    ft = {
      "tex",
      "bib"
    },
   config = function()
      require "custom.configs.vimtex"
   end,
  },
  {
    "github/copilot.vim",
    lazy = false,
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
