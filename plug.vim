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
Plug 'C-oss/defx-icons'
Plug 'shougo/defx.nvim'
Plug 't9md/vim-choosewin'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'scrooloose/nerdtree'
Plug 'luochen1990/rainbow'

" 注释
Plug 'b3nj5m1n/kommentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

call plug#end()


"=== 插件配置 ===

" Vim-airline Status
source ~/.config/nvim/plug/vim-airline.vim

" Rnvimr is a NeoVim plugin that allows you to use Ranger in a floating window.
source ~/.config/nvim/plug/rnvimr.vim

" defx.nvim defx-icons vim-chooswin
source ~/.config/nvim/plug/defx.vim
source ~/.config/nvim/plug/defx-icons.vim

source ~/.config/nvim/plug/nvim-treesitter.vim
source ~/.config/nvim/plug/rainbow.vim
source ~/.config/nvim/plug/kommentary.vim

source ~/.config/nvim/plug/vim-choosewin.vim


" 行号颜色
":highlight LineNr ctermfg=White
":highlight LineNr ctermbg=red

"=== 主题引用 ===
" Gruvbox-material
source ~/.config/nvim/plug/gruvbox-material.vim
" Edge Theme
source ~/.config/nvim/plug/edge.vim
" everforest
"source ~/.config/nvim/plug/everforest.vim
" material.nvim
source ~/.config/nvim/plug/material.nvim.vim



"=== 启用主题 ===
:colorscheme edge



