set mouse=a
set number
set relativenumber
set numberwidth=4

call plug#begin()

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf'

Plug 'airblade/vim-gitgutter', { 'on': 'GitGutterEnable' }
Plug 'tpope/vim-fugitive'

Plug 'christoomey/vim-tmux-navigator'
Plug 'yuttie/comfortable-motion.vim'

call plug#end()

nnoremap <C-t> :NERDTreeToggle<CR>
nmap <C-P> :FZF<CR>

