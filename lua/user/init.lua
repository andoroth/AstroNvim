return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.motion.harpoon" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  mappings = {
    i = {
      ["<C-s>"] = { "<Esc>:w<CR>" },
      ["<C-q>"] = { "<Esc>:q<CR>" },
    },
  },
  opt = {
    guifont = "FantasqueSansMNerdFont"
  },
}

