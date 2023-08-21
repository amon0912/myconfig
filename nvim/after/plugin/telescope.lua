local status, telescope = pcall(require, "telescope")

if not status then
  print "telescope n'est pas installé"
  return
end

telescope.setup {}
