filetype off                   " required!

" Setting up Vundle if not installed
let iCanHazVundle=1
let vundle_dir=g:user_config_dir.'/bundle/vundle'
let vundle_readme=vundle_dir.'/README.md'
if !filereadable(vundle_readme)
    echo 'Installing Vundle..'
    echo ''
    silent !mkdir -p g:bundle_dir
    silent !git clone https://github.com/gmarik/vundle vundle_dir
    let iCanHazVundle=0
endif
let &rtp .= ','.g:user_config_dir.'/bundle/vundle/'
call vundle#rc()
let g:bundle_dir=g:user_config_dir.'/bundle'

" let Vundle manage Vundle required! 
Bundle 'gmarik/vundle'

" themeis
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/hickop'

Bundle 'Smart-Home-Key'
Bundle 'ZenCoding.vim'
Bundle 'SuperTab-continued.'
Bundle 'The-NERD-Commenter'
Bundle 'bling/vim-airline'
Bundle 'docunext/closetag.vim'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-markdown'
Bundle 'kien/ctrlp.vim'

" Сиситемы контроля версий
Bundle 'tpope/vim-fugitive.git'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-git'

Bundle 'openssl.vim'

" Installing bundles for the first time
if iCanHazVundle == 0
    echo 'Installing Bundles, please ignore key map error messages'
    echo ''
    :BundleInstall
endif

filetype plugin indent on     " required!

