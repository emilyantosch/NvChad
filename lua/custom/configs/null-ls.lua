local null_ls = require("null-ls")

local opts = {
  sources = {
    null_ls.builtins.diagnostics.ruff,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.diagnostics.eslint_d,
  }
}
return opts
