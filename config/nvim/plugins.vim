
""" Vim-Plug
call plug#begin()

Plug 'fatih/vim-go'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
"Plug 'kristijanhusak/completion-tags'
"Plug 'nvim-lua/diagnostic-nvim'
Plug 'nvim-lua/lsp-status.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
"Plug 'tjdevries/nlua.nvim'
"Plug 'tjdevries/lsp_extensions.nvim'
"Plug 'liuchengxu/vista.vim'
Plug 'kosayoda/nvim-lightbulb'

" Debuggers
Plug 'mfussenegger/nvim-dap'
Plug 'puremourning/vimspector'
Plug 'nvim-telescope/telescope-vimspector.nvim'
Plug 'szw/vim-maximizer'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'

" Snipets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" File manager stuffs
Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'kyazdani42/nvim-tree.lua'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Top
Plug 'akinsho/nvim-bufferline.lua'
" Bottom
"Plug 'bling/vim-arline'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" Sidebars
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'szw/vim-maximizer'
Plug 'junegunn/vim-peekaboo'
Plug 'Yilin-Yang/vim-markbar'

" Edit mode helpers
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'

" Git utils
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'motemen/git-vim'
"Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'

" Database tools
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'
" InfluxDB
"Plug 'mattn/webapi-vim'
"Plug 'gianarb/vim-flux'


" File formats
Plug 'ekalinin/Dockerfile.vim'
Plug 'stephpy/vim-yaml'
"Plug 'plasticboy/vim-markdown'
Plug 'rhysd/vim-gfm-syntax'
Plug 'MTDL9/vim-log-highlighting'
"Plug 'Shougo/defx.nvim'
Plug 'reedes/vim-wordy'
Plug 'Shougo/deorise.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mzlogin/vim-markdown-toc'
Plug 'sheerun/vim-polyglot'
Plug 'Yggdroot/indentLine'


" Themes
"Plug 'morhetz/gruvbox'
Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'kristijanhusak/vim-hybrid-material'


" Search replace...
Plug 'Lokaltog/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'brooth/far.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

Plug 'voldikss/vim-floaterm'

call plug#end()

