local status, nvimTree = pcall(require, 'nvim-tree')

if not status then
	return
end

nvimTree.setup({
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})
