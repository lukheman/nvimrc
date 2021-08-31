local colors = {--{{{
  none = 'NONE',

  -- background
  bg0 = '#282828',
  bg0_h = '#1d2021',
  bg0_s = '#32302f',
  bg1 = '#3c3836',
  bg2 = '#504945',
  bg3 = '#665c54',
  bg4 = '#7c6f64',

  -- foreground
  fg0 = '#fbf1c7',
  fg1 = '#ebdbb2',
  fg2 = '#d5c4a1',
  fg3 = '#bdae93',
  fg4 = '#a89984',

  -- colors
  red = '#cc241d',
  green = '#98971a',
  yellow = '#d79922',
  blue = '#458588',
  purple = '#b16286',
  aqua = '#689d6a',
  gray = '#928374',
  darkblue = '#076678',
  orange = '#d65d0e',
}--}}}

-- higlighting function
function higlight(group, opts)
  local fg = colors.fg1
  local bg = colors.bg0
  local gui = 'NONE'

  if opts.fg ~= nil then
    fg = opts.fg
  end

  if opts.bg ~= nil then
    bg = opts.bg
  end

  if opts.gui ~= nil then
    gui = opts.gui
  end
  print(fg)
  print(bg)
  print(gui)
end

higlight('Comment', { fg="#fbf1c7", bg="#7c6f64", gui="italic" } )
higlight('Comment', {} )
