local present, nvim_comment = pcall(require, "nvim_comment")

if not present then
  return
end

local options = {
  marker_padding = true,
  -- should comment out empty or whitespace only lines
  comment_empty = false,
  -- Should key mappings be created
  create_mappings = true,
  -- Normal mode mapping left hand side
  line_mapping = "m",
  -- Visual/Operator mapping left hand side
  operator_mapping = "gc",
  -- Hook function to call before commenting takes place
  hook = nil
}

nvim_comment.setup(options)
