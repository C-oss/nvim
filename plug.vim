"
" loading plug-ins
"
call plug#begin('~/.config/nvim/plug')

" Status
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'jiangmiao/auto-pairs'

" 主题
Plug 'marko-cerovac/material.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/edge'
"Plug 'sainnhe/everforest'


" Ranger
Plug 'kevinhwang91/rnvimr'

" defx 文件管理
Plug 'shougo/defx.nvim'
"Plug 'C-oss/defx-icons'
Plug 't9md/vim-choosewin'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'scrooloose/nerdtree'
Plug 'luochen1990/rainbow'

" 注释
Plug 'b3nj5m1n/kommentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

call plug#end()



