return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		-- vim.g.nvim_treeside = "right"

		nvimtree.setup({
			view = {
				width = 35,
				side = "right",
				relativenumber = true,
			},
			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- Function to toggle or focus nvim-tree
		local function toggle_nvim_tree()
			local api = require("nvim-tree.api")
			if not require("nvim-tree.view").is_visible() then
				-- Open the tree if it's not visible
				api.tree.open()
			else
				-- If the tree is visible, check if it is focused
				if vim.bo.filetype == "NvimTree" then
					-- Close the tree if it is focused
					api.tree.close()
				else
					-- Focus the tree if it is not focused
					api.tree.focus()
				end
			end
		end

		-- Keymap for Leader m
		vim.keymap.set("n", "<leader>m", toggle_nvim_tree, { noremap = true, silent = true })

		-- keymap.set("n", "<leader>f1", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		-- keymap.set(
		-- 	"n",
		-- 	"<leader>m",
		-- 	"<cmd>NvimTreeFindFileToggle<CR>",
		-- 	{ desc = "Toggle file explorer on current file" }
		-- )
		-- keymap.set("n", "<F1>", "<cmd>NvimTreeFocus<CR>", { desc = "Focus Explorer" })
		-- keymap.set("n", "<leader>f1", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		-- toggle file explorer on current file
		-- keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
		-- keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	end,
}
