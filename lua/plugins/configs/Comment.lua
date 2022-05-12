local ok, comment = pcall(require, 'Comment')

if not ok then return end

comment.setup {
  toggler = {
    line = 'm',
    block = 'gc'
  },
  mappings = {
    basic = true,
    extra = false,
    extended = false
  }
}
