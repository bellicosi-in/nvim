-- ~/.config/nvim/lua/plugins/toggleterm.lua

return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		-- Toggle with Ctrl + `
		open_mapping = [[<C-`>]],
		direction = "horizontal", -- Options: 'horizontal', 'vertical', 'float', 'tab'
		float_opts = {
			border = "curved", -- Border style for floating terminal
		},
	},
}
