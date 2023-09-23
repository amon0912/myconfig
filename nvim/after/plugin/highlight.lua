local status, colorizer = pcall(require, 'colorizer')
if not status then
  print "Colorizer n'est pas installé"
  return
end
require 'colorizer'.setup {
  filetypes = { '*' },
  user_default_options = {
    RGB = true,      -- #RGB hex codes
    RRGGBB = true,   -- #RRGGBB hex codes
    names = true,    -- "Name" codes like Blue or Blue
    tailwind = true, -- Enable tailwind colors
  },
  -- cmp_docs = { always_update = true }
}
