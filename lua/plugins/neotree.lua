return {
		{
				"nvim-neo-tree/neo-tree.nvim",
				branch = "v3.x",
				dependencies = {
						"nvim-lua/plenary.nvim",
						"MunifTanjim/nui.nvim",
						"nvim-tree/nvim-web-devicons", -- optional, but recommended
				},
				lazy = false, -- neo-tree will lazily load itself
				config = function()
						require("neo-tree").setup({
								-- your neo-tree options here
						})

						-- ✅ Keymap (Lua version)
						vim.keymap.set("n", "<leader>m", "<cmd>Neotree filesystem toggle left<cr>", {
								desc = "Toggle Neo-tree file explorer",
								noremap = true,
								silent = true,
						})
				end,
		},
}

