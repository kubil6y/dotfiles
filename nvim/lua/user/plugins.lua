local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    print("Installing packer close and reopen Neovim...")
    vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("can not require 'packer'")
    return
end

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use("wbthomason/packer.nvim") -- Have packer manage itself
    use("nvim-lua/plenary.nvim") -- Useful lua functions used by lots of plugins
    use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
    use("windwp/nvim-ts-autotag") -- autotag for html etc.
    use("kyazdani42/nvim-web-devicons")
    use("kyazdani42/nvim-tree.lua")

    -- CMP
    use("hrsh7th/nvim-cmp") -- The completion plugin
    use("hrsh7th/cmp-buffer") -- buffer completions
    use("hrsh7th/cmp-path") -- path completions
    use("hrsh7th/cmp-nvim-lsp")
    use("saadparwaiz1/cmp_luasnip")
    --use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })

    -- LSP
    use("neovim/nvim-lspconfig") -- enable LSP
    use("williamboman/mason.nvim") -- mason: lsp, formatter, linter installer
    use("williamboman/mason-lspconfig.nvim")
    use("hrsh7th/cmp-nvim-lsp-signature-help")
    use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters
    use("Hoffs/omnisharp-extended-lsp.nvim")

    -- Telescope
    use("nvim-telescope/telescope.nvim")

    -- Treesitter
    use({ "nvim-treesitter/nvim-treesitter" })
    use("nvim-treesitter/nvim-treesitter-context")
    use("nvim-treesitter/playground")

    -- Statusbar
    use("nvim-lualine/lualine.nvim")

    -- Optimization with bytecode,hash,caching
    use("lewis6991/impatient.nvim")

    -- Colorschemes
    use("ellisonleao/gruvbox.nvim")
    use("folke/tokyonight.nvim")
    use("Mofiqul/vscode.nvim")


    -- Snippets
    use("L3MON4D3/LuaSnip") --snippet engine
    use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

    -- Commenting
    use("preservim/nerdcommenter")

    -- Git
    use({ "lewis6991/gitsigns.nvim" })
    use({ "tpope/vim-fugitive" })

    -- VIMSCRIPT PLUGINS
    use("tpope/vim-repeat")
    use("tpope/vim-surround")
    use("mbbill/undotree")

    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
