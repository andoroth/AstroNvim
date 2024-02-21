local prefix = "<leader><leader>"
local term_string = vim.fn.exists "$TMUX" == 1 and "tmux" or "term"
local maps = { n = {} }
local icon = vim.g.icons_enabled and "󱡀 " or ""
maps.n[prefix] = { desc = icon .. "Harpoon" }
require("astronvim.utils").set_mappings(maps)

return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { prefix .. "a", function() require("harpoon"):list():append() end, desc = "Add file" },
      {
        prefix .. "e",
        function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end,
        desc = "Toggle quick menu",
      },
      { "<C-j>", function() require("harpoon"):list():select(1) end, desc = "Goto mark 1" },
      { "<C-k>", function() require("harpoon"):list():select(2) end, desc = "Goto next 2" },
      { "<C-l>", function() require("harpoon"):list():select(3) end, desc = "Goto next 3" },
      { "<C-i>", function() require("harpoon"):list():select(4) end, desc = "Goto next 4" },
    },
    opts = {},
    config = function() require("harpoon"):setup() end,
  },
  {
    "catppuccin/nvim",
    optional = true,
    ---@type CatppuccinOptions
    opts = { integrations = { harpoon = true } },
  },
}
