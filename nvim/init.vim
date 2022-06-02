" ============= Vim-Plug ============== "{{{ 

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(expand('~/.config/nvim/plug'))

"}}}

" ================= looks and GUI stuff ================== "{{{

Plug 'ryanoasis/vim-devicons'                           " pretty icons everywhere
Plug 'luochen1990/rainbow'                              " rainbow parenthesis
Plug 'hzchirs/vim-material'                             " material color themes
Plug 'gregsexton/MatchTag'                              " highlight matching html tags
Plug 'Jorengarenar/vim-MvVis'                           " move visual selection
"}}}

" ================= Functionalities ================= "{{{
Plug 'turbio/bracey.vim'                                " Live server for HTML5
Plug 'preservim/nerdtree'                               " SideBar
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " LSP and more
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " fzf itself
Plug 'junegunn/fzf.vim'                                 " fuzzy search integration
Plug 'honza/vim-snippets'                               " actual snippets
Plug 'Yggdroot/indentLine'                              " show indentation lines
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}  " better python
Plug 'tpope/vim-commentary'                             " better commenting
Plug 'mhinz/vim-startify'                               " cool start up screen
Plug 'tpope/vim-fugitive'                               " git support
Plug 'psliwka/vim-smoothie'                             " some very smooth ass scrolling
Plug 'wellle/tmux-complete.vim'                         " complete words from a tmux panes
Plug 'tpope/vim-eunuch'                                 " run common Unix commands inside Vim
Plug 'machakann/vim-sandwich'                           " make sandwiches
Plug 'christoomey/vim-tmux-navigator'                   " seamless vim and tmux navigation
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'memgraph/cypher.vim'
Plug 'ollykel/v-vim'                                    " suport for V lang
call plug#end()

"}}}

"==================== General Config ======================"

set laststatus=2                    " Use status line
set number                          " Enable numbers on the left

set termguicolors                   " Opaque Background
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set mouse=a                         " Enable mouse scrolling

"==================== External Files ======================"
source ~/.config/nvim/status-line/statusline.vim
source ~/.config/nvim/color/four.vim