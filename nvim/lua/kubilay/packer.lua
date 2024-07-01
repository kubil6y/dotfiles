-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd("packer.nvim")

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- Colorschemes
    use({ "rose-pine/neovim", as = "rose-pine" })
    use("tjdevries/colorbuddy.nvim")
    use("ellisonleao/gruvbox.nvim")
    use("folke/tokyonight.nvim")

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    })

    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("nvim-treesitter/nvim-treesitter-context")
    use({
        -- Additional text objects via treesitter
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
    })
    use("hrsh7th/cmp-nvim-lsp-signature-help")
    use("windwp/nvim-autopairs")
    use({ "windwp/nvim-ts-autotag", commit = "531f48334c422222aebc888fd36e7d109cb354cd" })
    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("tpope/vim-surround")
    use({ "j-hui/fidget.nvim", commit = "0ba1e16d07627532b6cae915cc992ecac249fb97" })
    use("jose-elias-alvarez/null-ls.nvim")
    use("simrat39/rust-tools.nvim")

    use("nvim-lualine/lualine.nvim") -- Fancier statusline
    use("preservim/nerdcommenter") -- Commenting
    use("kyazdani42/nvim-web-devicons")
    use({ "kyazdani42/nvim-tree.lua", commit = "904f95cd9db31d1800998fa428e78e418a50181d" })
    use("norcalli/nvim-colorizer.lua")
    -- requires npm ci && npm run build
    use("laytan/tailwind-sorter.nvim")

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },
            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })
end)
