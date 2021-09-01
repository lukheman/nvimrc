local c = require("colors.themes.gruvbox").bright_colors
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
hl('Conceal', { fg=c.blue })
-- Line number of CursorLine
hl('CursorLineNr', { fg=c.yellow, bg=c.bg1 })

hl("NonText", { fg=c.bg2, bg=c.bg0 })
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


-- Character under cursor
-- local cursor = {}
-- hl('Cursor', cursor)
-- -- Visual mode cursor, selection
-- hl('vCursor', cursor)
-- -- Input moder cursor
-- hl('iCursor', cursor)
-- -- Language mapping cursor
-- hl('lCursor', cursor)


hl('Special', { fg=c.orange })
hl('Comment', { fg=c.gray, gui="italic" })
hl('Todo', { gui="bold,italic" })
hl('Error', { bg=c.red, gui="italic" })


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
hl("Function", { fg=c.green, gui="bold" })

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


--
-- Specified Filetype
--

-- Diff Highlighting
hl('DiffDelete', { fg=c.red, bg=c.bg0 })
hl('DiffAdd', { fg=c.green, bg=c.bg0  })
hl('DiffChange', { fg=c.aqua, bg=c.bg0 })
hl('DiffText', { fg=c.yellow, bg=c.bg0 })

-- Spelling Highlighting
hl('SpellCap', { gui="undercurl", guisp=c.red })
-- Not recognized word
hl('SpellBad', { gui="undercurl", guisp=c.blue })
-- Wrong spelling for selected region
hl('SpellLocal', { gui="undercurl", guisp=c.aqua})
-- Rare word
hl('SpellRare', { gui="undercurl", guisp=c.purple })

-- HTML
hl("htmlTag", { fg=c.blue })
hl("htmlEndTag", { fg=c.blue })

hl("htmlTagName", { fg=c.aqua, gui="bold" })
hl("htmlArg", { fg=c.aqua })

hl("htmlScriptTag",  { fg=c.purple })
hl("htmlTagN", { fg=c.fg1 })
hl("htmlSpecialTagName", { fg=c.aqua, gui="bold" })
hl("htmlSpecialChar", { fg=c.orange })
-----
-- hl('htmlLink', s:fg4, s:none, s:underline)
-- hl('htmlBold', s:vim_fg, s:vim_bg, s:bold)
-- hl('htmlBoldUnderline', s:vim_fg, s:vim_bg, s:bold . s:underline)
-- hl('htmlBoldItalic', s:vim_fg, s:vim_bg, s:bold . s:italic)
-- hl('htmlBoldUnderlineItalic', s:vim_fg, s:vim_bg, s:bold . s:underline . s:italic)
--
-- hl('htmlUnderline', s:vim_fg, s:vim_bg, s:underline)
-- hl('htmlUnderlineItalic', s:vim_fg, s:vim_bg, s:underline . s:italic)
-- hl('htmlItalic', s:vim_fg, s:vim_bg, s:italic)

-- CSS
hl("cssBraces", { fg=c.blue })
hl("cssFunctionName", { fg=c.yellow })
hl("cssIdentifier", { fg=c.orange })
hl("cssClassName", { fg=c.green })
hl("cssColor", { fg=c.blue })
hl("cssSelectorOp", { fg=c.blue })
hl("cssSelectorOp2", { fg=c.blue })
hl("cssImportant", { fg=c.green })
hl("cssVendor", { fg=c.fg1 })
hl("cssTextProp", { fg=c.aqua })
hl("cssAnimationProp", { fg=c.aqua })
hl("cssUIProp", { fg=c.yellow })
hl("cssTransformProp", { fg=c.aqua })
hl("cssTransitionProp", { fg=c.aqua })
hl("cssPrintProp", { fg=c.aqua })
hl("cssPositioningProp", { fg=c.yellow })
hl("cssBoxProp", { fg=c.aqua })
hl("cssFontDescriptorProp", { fg=c.aqua })
hl("cssFlexibleBoxProp", { fg=c.aqua })
hl("cssBorderOutlineProp", { fg=c.aqua })
hl("cssBackgroundProp", { fg=c.aqua })
hl("cssMarginProp", { fg=c.aqua })
hl("cssListProp", { fg=c.aqua })
hl("cssTableProp", { fg=c.aqua })
hl("cssFontProp", { fg=c.aqua })
hl("cssPaddingProp", { fg=c.aqua })
hl("cssDimensionProp", { fg=c.aqua })
hl("cssRenderProp", { fg=c.aqua })
hl("cssColorProp", { fg=c.aqua })
hl("cssGeneratedContentProp", { fg=c.aqua })

-- JavaScript
hl("javaScriptBraces", { fg=c.fg1 })
hl("javaScriptFunction", { fg=c.aqua })
hl("javaScriptIdentifier", { fg=c.red })
hl("javaScriptMember", { fg=c.blue })
hl("javaScriptNumber",  { fg=c.purple })
hl("javaScriptNull",  { fg=c.purple })
hl("javaScriptParens",  { fg=c.fg3 })

-- pangloss/vim-javascript
hl("jsClassKeyword", { fg=c.aqua })
hl("jsExtendsKeyword", { fg=c.aqua })
hl("jsExportDefault", { fg=c.aqua })
hl("jsTemplateBraces", { fg=c.aqua })
hl("jsGlobalNodeObjects", { fg=c.fg1 })
hl("jsGlobalObjects", { fg=c.fg1 })
hl("jsFunction", { fg=c.aqua })
hl("jsFuncParens", { fg=c.fg3 })
hl("jsParens", { fg=c.fg3 })
hl("jsNull", { fg=c.purple })
hl("jsUndefined", { fg=c.purple })
hl("jsClassDefinition", { fg=c.yellow })

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

-- Python
hl("pythonBuiltin", { fg=c.orange })
hl("pythonBuiltinObj", { fg=c.orange })
hl("pythonBuiltinFunc", { fg=c.orange })
hl("pythonFunction", { fg=c.aqua })
hl("pythonDecorator", { fg=c.red })
hl("pythonInclude", { fg=c.blue })
hl("pythonImport", { fg=c.blue })
hl("pythonRun", { fg=c.blue })
hl("pythonCoding", { fg=c.blue })
hl("pythonOperator", { fg=c.red })
hl("pythonException", { fg=c.red })
hl("pythonExceptions",  { fg=c.purple })
hl("pythonBoolean",  { fg=c.purple })
hl("pythonDot",  { fg=c.fg3 })
hl("pythonConditional", { fg=c.red })
hl("pythonRepeat", { fg=c.red })
hl("pythonDottedName", { fg=c.green, gui="bold" })

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

-- Java
hl('javaCommentTitle', { fg=c.fg4, gui="bold,italic" })
hl("javaAnnotation", { fg=c.blue })
hl("javaDocTags", { fg=c.aqua })
hl("javaParen",  { fg=c.fg3 })
hl("javaParen1",  { fg=c.fg3 })
hl("javaParen2",  { fg=c.fg3 })
hl("javaParen3",  { fg=c.fg3 })
hl("javaParen4",  { fg=c.fg3 })
hl("javaParen5",  { fg=c.fg3 })
hl("javaOperator", { fg=c.orange })
hl("javaVarArg", { fg=c.green })
