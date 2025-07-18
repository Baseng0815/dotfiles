return require("packer").startup(function(use)

    use "wbthomason/packer.nvim"

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'nvim-treesitter/nvim-treesitter'
    use 'lewis6991/gitsigns.nvim'

    -- diagnostics
    use {
        'folke/trouble.nvim',
        cmd = 'Trouble'
    }

    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'nvim-telescope/telescope-ui-select.nvim'

    use "scrooloose/nerdtree"
    use "tmhedberg/SimpylFold"
    use "vim-scripts/indentpython.vim"
    use "bronson/vim-trailing-whitespace"

    -- honestly, tpope is a god
    use "tpope/vim-sensible"
    use "tpope/vim-unimpaired"
    use "tpope/vim-fugitive"
    use "tpope/vim-surround"
    use "tpope/vim-eunuch"
    use "tpope/vim-repeat"
    use "tpope/vim-commentary"

    use "kshenoy/vim-signature"
    use "tmhedberg/matchit"
    use "alvan/vim-closetag"

    -- latex and snippet stuff
    use "rafamadriz/friendly-snippets"
    use 'honza/vim-snippets'
    use "lervag/vimtex"

    -- web stuff
    use "mattn/emmet-vim"

    -- toggle header and source file
    use "derekwyatt/vim-fswitch"
    use "jiangmiao/auto-pairs"

    -- seamless navigation between vim and tmux panes
    use "christoomey/vim-tmux-navigator"

    -- cosmetics
    use "chriskempson/base16-vim"
    use "morhetz/gruvbox"
    use "andweeb/presence.nvim"
end)
