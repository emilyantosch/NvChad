local plugins = {
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
   cmd = "Silicon",
    config = function()
      require("silicon").setup({
        font = "JetBrainsMono Nerd Font=34",
        theme = "OneHalfDark",
        background = "#ffffff",
        window_title = function ()
          return vim.fn.fnamemodify(
            vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()), ":t"
          )
        end
      })
    end,
  },
{
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
},
  {
    "hrsh7th/cmp-cmdline",
    lazy = false,
  },
  {
    "tpope/vim-dadbod",
    lazy = false,
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    lazy = false,
  },
  {
  "neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
 },
  {"epwalsh/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/projects/notes",
      },
    },

    -- see below for full list of options 👇
  },
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
      require("core.utils").load_mappings("vimtex")
   end,
  },
  {
  "sbdchd/neoformat",
    lazy = false,
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      vim.g.copilot_workspace_folders = {"~/projects/haw_ba/ba/"}
    end
  },
  {
    "neogitOrg/neogit",
    config = function ()
      require("neogit").setup {}
    end,
    dependencies = 'nvim-lua/plenary.nvim',
    lazy = false
  },
  {
    "smoka7/hop.nvim",
    version = "*",
    event = "VeryLazy",
    config = function ()
      require("core.utils").load_mappings("hop")
      require'hop'.setup{}
    end,
    opts = {
      keys = 'etovxqpdygfblzhckisuran',
    },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("harpoon").setup {}
      require("core.utils").load_mappings("harpoon")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "prettier",
        "eslint_d",
      }
    }
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function (_, opts)
      return require('rust-tools').setup(opts)
    end
  }
}

return plugins
