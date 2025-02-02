local on_attach = require("plugins.configs.lspconfig").on_attach

local cmp = require("cmp")
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"


lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
  root_dir = util.root_pattern(".git", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt"),
}


lspconfig.sqls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "sql" },
  root_dir = util.root_pattern(".git", vim.fn.getcwd()),
}

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


