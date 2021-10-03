local ok, treesitter = pcall(require, "nvim-treesitter.configs")

if not ok then
  return
end

treesitter.setup {
  ensure_installed = {
    "lua",
    "python"
  },
  highlight = {
    enable = true,
    use_languagetree = true
  }
}
