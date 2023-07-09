local M = {}



M.abc = {
  i = {
    ["jk"] = {"<ESC>", "Escape insert mode", opts = {nowait = true}},
  },
  n = {
  },
  v = {
    ["J"] = {":m '>+1<cr>gv=gv"},
    ["K"] = {":m '>-2<cr>gv=gv"},
  }
}

M.hop = {
  plugin = true,
  n = { 
    ["<leader><leader>/"] = {":HopPattern<cr>", "Hop: Search Pattern"},
    ["s"] = {":HopChar1<cr>", "Hop: Search Single character"},
    ["S"] = {":HopChar2<cr>", "Hop: Search two characters"}
  }
}

M.harpoon = {
  plugin = true,
  n = {
    ["<leader>Ha"] = {function ()
      require("harpoon.mark").add_file() 
    end, "Add current file to harpoon list"},
    ["<leader>Hm"] = {function() require("harpoon.ui").toggle_quick_menu() end, "Open the quick menu"},
    ["<leader>Hh"] = {function ()
      require("harpoon.ui").nav_file(1) 
    end, "Jump to first file in list"},
    ["<leader>Hj"] = {function ()
      require("harpoon.ui").nav_file(2) 
    end, "Jump to second file in list"},
    ["<leader>Hk"] = {function ()
      require("harpoon.ui").nav_file(3) 
    end, "Jump to third file in list"},
    ["<leader>Hl"] = {function ()
      require("harpoon.ui").nav_file(4) 
    end, "Jump to fourth file in list"},
  
  --]]
  }
}

return M
