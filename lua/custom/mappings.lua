local M = {}



M.abc = {
  i = {
    ["jk"] = {"<ESC>", "Escape insert mode", opts = {nowait = true}},
    ["<C-x>cm"] = {"<cmd>Copilot", "Synth completions"},
    ["<C-x>cc"] = {"<Plug>(copilot-suggest)", "Synth suggestion"},
    ["<C-x>v"] = {":vsplit<cr>", "Vertical split current buffer"},
    ["<C-x>h"] = {":vsplit<cr>", "Horizontal split current buffer"},
    ["<C-x>sa"] = {"<Plug>(nvim-surround-normal)", "Insert surround on current line"},
    ["<C-x>sc"] = {"<Plug>(nvim-surround-change)", "Change surround on current line"},
    ["<C-x>sd"] = {"<Plug>(nvim-surround-delte)", "Delete surround on current line"},
  },
  n = {
    ["<leader>gg"] = {":Neogit<cr>", "Open git menu"},
    ["<leader>it"] = {"core.integrations.telescope.find_linkable", "Telescope for linkable"},
    ["<leader>ii"] = {"<cmd>Neorg index<cr>", "Change to the index file of current workspace"},
    ["<leader>is"] = {"<cmd>Neorg workspace<cr>", "Activate workspace function"},

    ["<C-x>v"] = {":vsplit<cr>", "Vertical split current buffer"},
    ["<C-x>h"] = {":vsplit<cr>", "Horizontal split current buffer"},
    ["<C-x>sa"] = {"<Plug>(nvim-surround-normal)", "Insert surround on current line"},
    ["<C-x>sc"] = {"<Plug>(nvim-surround-change)", "Change surround on current line"},
    ["<C-x>sd"] = {"<Plug>(nvim-surround-delte)", "Delete surround on current line"},
  },
  v = {
    ["J"] = {":m '>+1<cr>gv=gv"},
    ["K"] = {":m '>-2<cr>gv=gv"},
  }
}


M.hop = {
  plugin = true,
  n = { 
    ["sp"] = {":HopPattern<cr>", "Hop: Search Pattern"},
    ["ss"] = {":HopChar1<cr>", "Hop: Search Single character"},
    ["sS"] = {":HopChar2<cr>", "Hop: Search two characters"},
    ["sw"] = {":HopWord<cr>", "Hop: Search word"},
  },
  v = { 
    ["sp"] = {"<cmd>HopPattern<cr>", "Hop: Search Pattern"},
    ["ss"] = {"<cmd>HopChar1<cr>", "Hop: Search Single character"},
    ["sS"] = {"<cmd>HopChar2<cr>", "Hop: Search two characters"},
    ["sw"] = {"<cmd>HopWord<cr>", "Hop: Search word"},
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
  
  
  }
}

return M
