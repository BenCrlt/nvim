-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use("nvim-tree/nvim-web-devicons")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("nvim-treesitter/nvim-treesitter-textobjects")

	use(
		"nvim-treesitter/nvim-treesitter",
		{ run = ":TSUpdate", requires = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		} }
	)

	-- auto-completion
	use({ "hrsh7th/nvim-cmp" })
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- formating and linting
	use("stevearc/conform.nvim", { event = { "BufReadPre", "BufNewFile" } })
	use("mfussenegger/nvim-lint", { event = { "BufReadPre", "BufNewFile" } })

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({
		"nvimdev/lspsaga.nvim",
		after = "nvim-lspconfig",
		requires = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
	}) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional
		},
	})

	-- Database managment
	use({
		"kristijanhusak/vim-dadbod-ui",
		requires = {
			{ "tpope/vim-dadbod" },
			{
				"kristijanhusak/vim-dadbod-completion",
				ft = { "sql", "mysql", "plsql" },
			},
		},
	})

	use({
		"NeogitOrg/neogit",
		requires = {
			"nvim-lua/plenary.nvim", -- required
			"nvim-telescope/telescope.nvim", -- optional
			"sindrets/diffview.nvim", -- optional
			"ibhagwan/fzf-lua", -- optional
		},
	})

	use("christoomey/vim-tmux-navigator")

	use("Mofiqul/dracula.nvim")
	use("folke/tokyonight.nvim")
	use("rose-pine/neovim")
	use("shaunsingh/nord.nvim")
	use("AlexvZyl/nordic.nvim")
	use("catppuccin/nvim")

	--status line
	use({ "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons" } })

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	use({
		"VonHeikemen/fine-cmdline.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})

	use("sindrets/diffview.nvim")

	use("github/copilot.vim")

	use("folke/which-key.nvim")

	use("wellle/targets.vim")

	use({ "romgrk/barbar.nvim", requires = { "nvim-tree/nvim-web-devicons" } })

	-- DEBUGGING
	use("mfussenegger/nvim-dap")
	use({ "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } })
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	use("theHamsta/nvim-dap-virtual-text")

	use("folke/neodev.nvim")
	use("xiyaowong/transparent.nvim")

	use({
		"VonHeikemen/fine-cmdline.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})
end)
