return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'junegunn/vim-easy-align'

    use {'neoclide/coc.nvim', branch = 'release'}
end)
