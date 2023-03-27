local present, filetype = pcall(require, "filetype")
if not present then
  return
end


filetype.setup {
  overrides = {
    extensions = {
      ejs = "html",
      sql = "sql",
      sh = "sh"
    }
  }
}
