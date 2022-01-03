source $HOME/.config/nvim/configs/coc-settings.vim
source $HOME/.config/nvim/configs/nerdtree-config.vim


set re=0
set redrawtime=10000
set noerrorbells
set tabstop=2 softtabstop=5
set relativenumber
set shiftwidth=2
set foldmethod=manual
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set hlsearch
set mouse=a
set smartcase
set splitbelow
set splitright
" share system clipboard with vim
set clipboard=unnamedplus
set encoding=UTF-8


set colorcolumn =80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"NORMAL MODE remap
:inoremap jk <Esc>
:inoremap kj <Esc>

"new Leader
let mapleader = " "

filetype plugin indent on
call plug#begin('~/.vim/plugged')
" Plug 'github/copilot.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
  let g:coc_global_extensions = [ 'coc-tailwindcss', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-eslint', 'coc-yank', 'coc-highlight', 'coc-pairs', 'coc-tsserver', 'coc-sql', 'coc-prisma' ]
Plug 'pantharshit00/vim-prisma'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-surround'
"colorschemes
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'sainnhe/gruvbox-material'
"Plug 'srcery-colors/srcery-vim'
Plug 'vim-airline/vim-airline'
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'zhimsel/vim-stay'

call plug#end() 

"GRUVBOX"
let g:gruvbox_material_transparent_background = 0
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_enable_bold = 1
" colorscheme gruvbox-material
colorscheme spaceduck
" Vim Wiki
let g:vimwiki_list = [{'auto_diary_index': 1}]

nnoremap <C-m> :FloatermNew<CR>
let g:floaterm_keymap_toggle ='<F12>' 

" toggle fold
nnoremap <Leader>f za

" quick jump
nnoremap J 5j
nnoremap K 5k
nnoremap <Leader>j J
" coc-yank
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

"fzf key remap
nnoremap <silent> <Leader><Leader> :GFiles<CR>
noremap <silent> <C-P> :Rg<CR>
noremap <silent> <Leader>b :Buffers<CR>
noremap <silent> <Leader>p :Files<CR>

"Coc maps
 noremap <Leader>S :CocSearch<Space>
 noremap <Leader>cw :CocCommand document.renameCurrentWord<CR>


"undotree remap
nnoremap <Leader>u :UndotreeShow<CR>

"NERDTree 
let g:NERDTreeShowHidden = 1

" Window splitting settings
set splitbelow splitright

" Remap splits navigation to just CTRL+hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusting split sizes more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" remove asthetic line in screen splits
set fillchars+=vert:/

" NERD commenter config
filetype plugin on

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = "*"
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = '*'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = '*'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

  " Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<Leader>>'

" Vim-stay used for folding
set viewoptions=cursor,folds,slash,unix
