local M = {}


M.abc = {
  i = {
    ["jk"] = {"<ESC>", "Escape insert mode", opts = {nowait = true}},
  },
  n = {
    ["<leader><leader>/"] = {":HopPattern<cr>", "Hop: Search Pattern"}
  }
}
return M
