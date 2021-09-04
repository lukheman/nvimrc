
local treesitter = require("nvim-treesitter.configs")

treesitter.setup {
  -- ensure_installed = {
  --   "lua",
  --   "python"
  -- },
  highlight = {
    enable = true,
    use_languagetree = true
  }
}
