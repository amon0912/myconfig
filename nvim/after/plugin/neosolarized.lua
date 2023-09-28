local status, neosolarized = pcall(require, 'neosolarized')

if not status then
  return
end

require('colorbuddy').setup()

neosolarized.setup({
  comment_italics = true,
  background_set = false,
})
