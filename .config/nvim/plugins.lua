return require("packer").startup(function(use)

    use "wbthomason/packer.nvim"

    -- Code completion
    -- use "ycm-core/YouCompleteMe"
    use {
        "neoclide/coc.nvim",
        branch = "release",
        run = "yarn install --frozen-lockfile"
    }
    use "tikhomirov/vim-glsl"
    use "github/copilot.vim"

    -- TODO find out why there are two fzf
    use "junegunn/fzf.vim"

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
    -- use "SirVer/ultisnips"
    use "honza/vim-snippets"
    use "lervag/vimtex"

    -- web stuff
    use "mattn/emmet-vim"
    use "Yggdroot/indentLine"

    -- random stuff that I will probably never use
    -- use "MaxMEllon/vim-jsx-pretty"
    -- use "chrisbra/colorizer"
    -- use "pangloss/vim-javascript"
    -- use "wlangstroth/vim-racket"

    -- Toggle header and source file
    use "derekwyatt/vim-fswitch"
    use "jiangmiao/auto-pairs"

    -- Seamless navigation between vim and tmux panes
    use "christoomey/vim-tmux-navigator"

    -- Vim airline and other cosmetics
    use "chriskempson/base16-vim"
    use "morhetz/gruvbox"
end)
