return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<f1>", ":Neotree filesystem reveal toggle left<CR>", {})
		vim.keymap.set("n", "<f2>", ":Neotree buffers reveal toggle float<CR>", {})
	end,
}
