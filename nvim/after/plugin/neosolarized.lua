local status, neosolarized = pcall(require, 'neosolarized')

if not status then
	return
end

neosolarized.setup({
	comment_italics = true,
	background_set = false,
})
