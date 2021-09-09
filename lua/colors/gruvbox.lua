local c = require("colors.themes.gruvbox")
local hl = require("utils").highlight

-- Normal text
hl("Normal", { fg=c.fg1, bg=c.bg0 })

hl("CursorLine", { bg=c.bg1 })
hl("CursorColumn", { bg=c.bg1 })

-- Tab pages line filler
hl("TabLineFill", { fg=c.bg4, bg=c.bg1, gui="inverse" })
--Active tab page label
hl("TabLineSel", { fg=c.green, bg=c.bg1, gui="inverse" })
-- Not active tab page label
hl("TabLine", { fg=c.bg4, bg=c.bg1, gui="inverse" })
-- Match paired bracket under the cursor
hl("MatchParen", { bg=c.bg3, gui="bold" })

-- Highlighted screen columns
hl("ColorColumn",  { bg=c.bg1 })
-- Concealed element: \lambda → λ
hl('Conceal', { gui='underline', bg=c.none })
-- Line number of CursorLine
hl('CursorLineNr', { fg=c.yellow, bg=c.bg1 })

hl("NonText", { fg=c.bg0, bg=c.bg0 }) -- hude ~
hl("SpecialKey", { bg=c.bg2 })

hl('Visual', { bg=c.bg3, gui="inverse" })
hl('VisualNOS', { bg=c.bg3, gui="inverse" })

hl('Search', { fg=c.yellow, bg=c.bg0, gui="inverse" })
hl('IncSearch', { fg=c.orange, bg=c.bg0, gui="inverse " })

hl('Underlined', { fg=c.blue, gui="underline" })

hl('StatusLine', { fg=c.fg1, bg=c.bg2 })
hl('StatusLineNC', { fg=c.fg4, bg=c.bg1 })

-- The column separating vertically split windows
hl('VertSplit', { fg=c.bg0, bg=c.bg3 })
-- Current match in wildmenu completion
hl('WildMenu', { fg=c.blue, bg=c.bg2, gui="bold" })

-- Directory names, special names in listing
hl("Directory", { fg=c.green, gui="bold" })

-- Titles for output from :set all, :autocmd, etc.
hl("Title", { fg=c.green, gui="bold" })

-- Error messages on the command line
hl('ErrorMsg', { fg=c.bg0, bg=c.red, gui="bold" })
-- More prompt: -- More --
hl("MoreMsg", { fg=c.yellow, gui="bold" })
-- Current mode message: -- INSERT --
hl("ModeMsg", { fg=c.yellow, gui="bold" })
-- 'Press enter' prompt and yes/no questions
hl("Question", { fg=c.orange, gui="bold" })
-- Warning messages
hl("WarningMsg", { fg=c.red, gui="bold" })


-- Line number for :number and :# commands
hl('LineNr', { fg=c.bg4 })
-- Column where signs are displayed
hl('SignColumn', { bg=c.bg0 })
-- Line used for closed folds
hl('Folded', { fg=c.gray, bg=c.bg1, gui="italic" })
-- Column where folds are displayed
hl('FoldColumn', { fg=c.gray, bg=c.bg1 })


hl('Special', { fg=c.orange })
hl('Comment', { fg=c.gray })
hl('Todo', { fg=c.blue, bg=c.bg0, gui="bold" })
hl('Error', { bg=c.red })


-- Generic statement
hl("Statement", { fg=c.red })
-- if, then, else, endif, swicth, etc.
hl("Conditional", { fg=c.red })
-- for, do, while, etc.
hl("Repeat", { fg=c.red })
-- case, default, etc.
hl("Label", { fg=c.red })
-- try, catch, throw
hl("Exception", { fg=c.red })
-- sizeof, "+", "*", etc.
hl("Operator", { fg=c.red })
-- Any other keyword
hl("Keyword", { fg=c.red })

-- Variable name
hl("Identifier", { fg=c.red })
-- Function name
-- hl("Function", { fg=c.green, gui="bold" })
hl("Function", { fg=c.green })

-- Generic preprocessor
hl("PreProc", { fg=c.aqua })
-- Preprocessor #include
hl("Include", { fg=c.aqua })
-- Preprocessor #define
hl("Define", { fg=c.aqua })
-- Same as Define
hl("Macro", { fg=c.aqua })
-- Preprocessor #if, #else, #endif, etc.
hl("PreCondit", { fg=c.aqua })

-- Generic constant
hl("Constant", { fg=c.purple })
-- Character constant: 'c', '/n'
hl("Character", { fg=c.purple })
-- String constant: "this is a string"
hl('String', { fg=c.green })
-- Boolean constant: TRUE, false
hl("Boolean", { fg=c.purple })
-- Number constant: 234, 0xff
hl("Number", { fg=c.purple })
-- Floating point constant: 2.3e10
hl("Float", { fg=c.purple })

-- Generic type
hl("Type", { fg=c.yellow })
-- static, register, volatile, etc
hl("StorageClass", { fg=c.orange })
-- struct, union, enum, etc.
hl("Structure", { fg=c.aqua })
-- typedef
hl("Typedef", { fg=c.yellow })


-- Popup menu: normal item
hl('Pmenu', { fg=c.fg1, bg=c.bg2 })
-- Popup menu: selected item
hl('PmenuSel', { fg=c.bg2, bg=c.blue, gui="bold" })
-- Popup menu: scrollbar
hl('PmenuSbar', { bg=c.bg2})
-- Popup menu: scrollbar thumb
hl('PmenuThumb', { bg=c.bg4 })

-- Diff Highlighting
hl('DiffDelete', { fg=c.bg0, bg=c.red })
hl('DiffAdd', { fg=c.bg0, bg=c.green })
hl('DiffChange', { fg=c.bg0, bg=c.aqua })
hl('DiffText', { fg=c.bg0, bg=c.yellow })

-- Spelling Highlighting
hl('SpellCap', { gui="undercurl", guisp=c.red })
-- Not recognized word
hl('SpellBad', { gui="undercurl", guisp=c.blue })
-- Wrong spelling for selected region
hl('SpellLocal', { gui="undercurl", guisp=c.aqua})
-- Rare word
hl('SpellRare', { gui="undercurl", guisp=c.purple })


--
-- Specified Filetype
--

-- Markdown
hl('markdownItalic', { fg=c.fg3, gui="italic"})
hl('markdownLinkText', { fg=c.gray, gui="underline" })
hl("markdownH1", { fg=c.green, gui="bold" })
hl("markdownH2", { fg=c.green, gui="bold" })
hl("markdownH3", { fg=c.yellow, gui="bold" })
hl("markdownH4", { fg=c.yellow, gui="bold" })
hl("markdownH5", { fg=c.yellow })
hl("markdownH6", { fg=c.yellow })

hl("markdownCode", { fg=c.aqua })
hl("markdownCodeBlock", { fg=c.aqua })
hl("markdownCodeDelimiter", { fg=c.aqua })

hl("markdownBlockquote", { fg=c.gray })
hl("markdownListMarker", { fg=c.gray })
hl("markdownOrderedListMarker", { fg=c.gray })
hl("markdownRule", { fg=c.gray })
hl("markdownHeadingRule", { fg=c.gray })

hl("markdownUrlDelimiter",  { fg=c.fg3 })
hl("markdownLinkDelimiter",  { fg=c.fg3 })
hl("markdownLinkTextDelimiter",  { fg=c.fg3 })

hl("markdownHeadingDelimiter", { fg=c.orange })
hl("markdownUrl",  { fg=c.purple })
hl("markdownUrlTitleDelimiter", { fg=c.green })

hl('markdownIdDeclaration', { fg=c.gray, gui="underline" })

-- Ruby
hl("rubyStringDelimiter", { fg=c.green })
hl("rubyInterpolationDelimiter", { fg=c.aqua })

-- Vim
hl('vimCommentTitle', { fg=c.fg4, gui="bold,italic" })
hl("vimNotation", { fg=c.orange })
hl("vimBracket", { fg=c.orange })
hl("vimMapModKey", { fg=c.orange })
hl("vimFuncSID",  { fg=c.fg3 })
hl("vimSetSep",  { fg=c.fg3 })
hl("vimSep",  { fg=c.fg3 })
hl("vimContinue",  { fg=c.fg3 })
