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
<<<<<<< HEAD
    ["<leader>ii"] = {"<cmd>Neorg index<cr>", "Change to the index file of current workspace"},
    ["<leader>is"] = {"<cmd>Neorg workspace<cr>", "Activate workspace function"},
    ["<leader>lr"] = {function ()
      vim.lsp.buf.rename()
    end, "Rename symbol"},
    ["<leader>fs"] = {function ()
     require("telescope.builtin").lsp_workspace_symbols()
    end, "Find workspace symbols"},
||||||| parent of 50c5ddd (added also more config)
    ["<leader>ii"] = {"<cmd>Neorg index<cr>", "Change to the index file of current workspace"},
    ["<leader>is"] = {"<cmd>Neorg workspace<cr>", "Activate workspace function"},

=======
    ["<leader>ot"] = {"<cmd>ObsidianToday<cr>", "Open Today's daily note"},
    ["<leader>oq"] = {"<cmd>ObsidianQuickSwitch<cr>", "QuickSwitch Telescope"},
    ["<leader>of"] = {"<cmd>ObsidianFollowLink vsplit<cr>", "Open link in vsplit"},
    ["<leader>or"] = {"<cmd>ObsidianRename", "Rename note"},
    ["<leader>ol"] = {"<cmd>ObsidianLink<cr>", "Create link"},
    ["<leader>og"] = {"<cmd>ObsidianTags<cr>", "Find tags in vault"},

>>>>>>> 50c5ddd (added also more config)
    ["<C-x>v"] = {":vsplit<cr>", "Vertical split current buffer"},
    ["<C-x>h"] = {":vsplit<cr>", "Horizontal split current buffer"},
    ["<C-x>sa"] = {"<Plug>(nvim-surround-normal)", "Insert surround on current line"},
    ["<C-x>sc"] = {"<Plug>(nvim-surround-change)", "Change surround on current line"},
    ["<C-x>sd"] = {"<Plug>(nvim-surround-delte)", "Delete surround on current line"},

    ["<leader>qq"] = {function() 
	    require("psql").query_paragraph()
    end
    , "Query Paragraph"},
  },
  v = {
    ["<leader>oe"] = {"<cmd>ObsidianExtractNote", "Extract visually selected text into new Note"},
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


M.vimtex = {
  plugin = true,
  n = {
    ["<leader>ll"] = {"<Plug>VimtexCompile<cr>", "Compile the current file"},
    ["<leader>lv"] = {"<Plug>VimtexView<cr>", "View the current file"},
    ["<leader>lt"] = {"<Plug>VimtexTocToggle<cr>", "Toggle the table of contents"},
    ["<leader>lc"] = {"<Plug>VimtexCompile<cr><Plug>VimtexView<cr>", "Compile and view the current file"},
  }
}

M.harpoon = {
  plugin = true,
  n = {
    ["<leader>öa"] = {function ()
      require("harpoon.mark").add_file() 
    end, "Add current file to harpoon list"},
    ["<leader>öm"] = {function() require("harpoon.ui").toggle_quick_menu() end, "Open the quick menu"},
    ["<leader>öh"] = {function ()
      require("harpoon.ui").nav_file(1) 
    end, "Jump to first file in list"},
    ["<leader>öj"] = {function ()
      require("harpoon.ui").nav_file(2) 
    end, "Jump to second file in list"},
    ["<leader>ök"] = {function ()
      require("harpoon.ui").nav_file(3) 
    end, "Jump to third file in list"},
    ["<leader>öl"] = {function ()
      require("harpoon.ui").nav_file(4) 
    end, "Jump to fourth file in list"},
  
  
  }
}

return M
