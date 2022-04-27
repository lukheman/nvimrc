local ok, signature = pcall(require, "lsp_signature")

if not ok then return end

signature.setup {
  floating_window = true,
  floating_window_above_cur_line = false,
  fix_pos = false,
  hint_enable = true, -- virtual hint enable
  hint_prefix = " ",  -- Panda for parameter
  hint_scheme = "String",
  hi_parameter = "LspSignatureActiveParameter",
  max_height = 5,
  max_width = 65,
  handler_opts = {
    border = 'single'
  },
}
