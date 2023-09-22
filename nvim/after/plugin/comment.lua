local status, comment = pcall(require, 'Comment')
if not status then
  print "Comment pas installé"
  return null
end
require('Comment').setup()
