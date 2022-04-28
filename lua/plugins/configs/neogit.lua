local present, neogit = pcall(require, "neogit")


if not present then return end

neogit.setup {
  -- customize displayed signs
  signs = {
    -- { CLOSED, OPENED }
    section = { "", "" },
    item = { "", "" },
    hunk = { "", "" },
  },
}
