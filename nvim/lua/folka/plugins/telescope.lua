return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<CR>"] = function(prompt_bufnr)
							local selection = require("telescope.actions.state").get_selected_entry()
							local fname = selection[1]
							vim.cmd("tabnew " .. fname) -- Open the file in a new tab
							vim.api.nvim_input("<Esc>") -- Leave insert mode
						end,
						-- ["<CR>"] = function(prompt_bufnr)
						-- 	local state = require("telescope.actions.state")
						-- 	local entry = state.get_selected_entry()
						-- 	local filename = entry.path or entry[1] -- Ensure `entry.path` is used if available
						--
						-- 	if filename then
						-- 		-- Normalize the filename to ensure consistent matching
						-- 		local abs_filename = vim.fn.fnamemodify(filename, ":p")
						--
						-- 		-- Check if the file is already open in a tab
						-- 		for i = 1, vim.fn.tabpagenr("$") do
						-- 			local tab_winnr = vim.fn.tabpagewinnr(i)
						-- 			local bufnr = vim.fn.winbufnr(tab_winnr)
						-- 			if bufnr ~= -1 then -- Ensure the buffer exists
						-- 				local bufname = vim.fn.fnamemodify(vim.fn.bufname(bufnr), ":p")
						-- 				if bufname == abs_filename then
						-- 					vim.cmd("tabnext " .. i) -- Switch to the tab with the file
						-- 					actions.close(prompt_bufnr) -- Close Telescope
						-- 					return
						-- 				end
						-- 			end
						-- 		end
						--
						-- 		-- File not open in any tab, open it in a new one
						-- 		vim.cmd("tabnew " .. abs_filename)
						-- 	end
						--
						-- 	actions.close(prompt_bufnr) -- Close Telescope
						-- end,
					},
					n = {
						["<CR>"] = function(prompt_bufnr)
							local selection = require("telescope.actions.state").get_selected_entry()
							local fname = selection[1]
							vim.cmd("tabnew " .. fname) -- Open the file in a new tab
							vim.api.nvim_input("<Esc>") -- Leave insert mode
						end,
						-- ["<CR>"] = function(prompt_bufnr)
						-- 	local state = require("telescope.actions.state")
						-- 	local entry = state.get_selected_entry()
						-- 	local filename = entry.path or entry[1] -- Ensure `entry.path` is used if available
						--
						-- 	if filename then
						-- 		-- Normalize the filename to ensure consistent matching
						-- 		local abs_filename = vim.fn.fnamemodify(filename, ":p")
						--
						-- 		-- Check if the file is already open in a tab
						-- 		for i = 1, vim.fn.tabpagenr("$") do
						-- 			local tab_winnr = vim.fn.tabpagewinnr(i)
						-- 			local bufnr = vim.fn.winbufnr(tab_winnr)
						-- 			if bufnr ~= -1 then -- Ensure the buffer exists
						-- 				local bufname = vim.fn.fnamemodify(vim.fn.bufname(bufnr), ":p")
						-- 				if bufname == abs_filename then
						-- 					vim.cmd("tabnext " .. i) -- Switch to the tab with the file
						-- 					actions.close(prompt_bufnr) -- Close Telescope
						-- 					return
						-- 				end
						-- 			end
						-- 		end
						--
						-- 		-- File not open in any tab, open it in a new one
						-- 		vim.cmd("tabnew " .. abs_filename)
						-- 	end
						--
						-- 	actions.close(prompt_bufnr) -- Close Telescope
						-- end,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>p", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>P", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		-- keymap.set("n", "<leader>f", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>F", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
	end,
}
