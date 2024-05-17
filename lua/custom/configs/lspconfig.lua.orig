local on_attach = require("plugins.configs.lspconfig").on_attach

local cmp = require("cmp")
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

<<<<<<< HEAD
lspconfig.typst_lsp.setup {
||||||| parent of 50c5ddd (added also more config)
lspconfig.pyright.setup {
=======
local cmp = require("cmp")

lspconfig.pyright.setup {
>>>>>>> 50c5ddd (added also more config)
  on_attach = on_attach,
  capabilities = capabilities,
<<<<<<< HEAD
  filetypes = { "typst"}
||||||| parent of 50c5ddd (added also more config)
=======
  filetypes = { "python" },
  root_dir = util.root_pattern(".git", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt"),
}

lspconfig.sqls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "sql"},
  cmd = {"/home/emmi/go/bin/sqls"}
>>>>>>> 50c5ddd (added also more config)
}

lspconfig.sqls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "sql" },
  root_dir = util.root_pattern(".git", vim.fn.getcwd()),
}


lspconfig.marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
<<<<<<< HEAD

lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
lspconfig.texlab.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

    -- `/` cmdline setup.
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- `:` cmdline setup.
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        {
          name = 'cmdline',
          option = {
            ignore_cmds = { 'Man', '!' }
          }
        }
      })
    })
||||||| parent of 50c5ddd (added also more config)
=======

lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.typst_lsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "typst" }
}

lspconfig.texlab.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- `/` cmdline setup.
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- `:` cmdline setup.
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      {
        name = 'cmdline',
        option = {
          ignore_cmds = { 'Man', '!' }
        }
      }
    })
  })
>>>>>>> 50c5ddd (added also more config)
