syntax on
set nocompatible
filetype off                

"-------------------------------------------Vim Plugins----------------------------------------------------------------
"`:PluginInstall`
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    "Let Vundle handle plugins"
    Plugin 'VundleVim/Vundle.vim'
    "File Navigation"
    Plugin 'preservim/nerdtree'
    Plugin 'junegunn/fzf', { 'do' : { -> fzf#install()}}
    Plugin 'junegunn/fzf.vim'
    Plugin 'vifm/vifm.vim'                           "File navigator
    Plugin 'mcchrish/nnn.vim'                        "File navigator
    "Plugin 'kien/ctrlp.vim'                          "Add Fuzzy finder
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight' "Add Highlights and Icons to nerdtree
    Plugin 'nvim-lua/popup.nvim'
    Plugin 'nvim-lua/plenary.nvim'
    Plugin 'nvim-telescope/telescope.nvim'
    "Custom ColorScheme"
    Plugin 'phanviet/vim-monokai-pro'
    Plugin 'morhetz/gruvbox'                         "Full Transparent
    Plugin 'sainnhe/gruvbox-material'                "Full Transparent
    Plugin 'sainnhe/sonokai'
    Plugin 'patstockwell/vim-monokai-tasty'          "Full Transparent
    "Status Bars
    Plugin 'vim-airline/vim-airline'                 "Add status bar
    Plugin 'vim-airline/vim-airline-themes'
    "Syntaxing
    Plugin 'sheerun/vim-polyglot'
    Plugin 'valloric/YouCompleteMe'                  "Autocomplete
    Plugin 'scrooloose/syntastic'           
    Plugin 'ap/vim-css-color'                        "Display color in vim
    Plugin 'prettier/vim-prettier'
    Plugin 'uiiaoo/java-syntax.vim'
    "Commenting
    Plugin 'scrooloose/nerdcommenter'
    "Git Management
    Plugin 'airblade/vim-gitgutter'
    Plugin 'APZelos/blamer.nvim'
    Plugin 'tpope/vim-fugitive'
    "Code related stuff
    Plugin 'majutsushi/tagbar'
    Plugin 'mattn/emmet-vim'                         "Emmets
    Plugin 'tpope/vim-surround'                      "Surround with characters
    "Plugin 'neoclide/coc.nvim'                       "Nodejs
    Plugin 'simeji/winresizer'                       "Window Resizer for VIM
    Plugin 'Raimondi/delimitMate'
    Plugin 'mhinz/vim-startify'
    "Godot
    Plugin 'habamax/vim-godot'
    "Plugin 'hugolgst/vimsence'
    Plugin 'andweeb/presence.nvim'
    "Add icons
    Plugin 'ryanoasis/vim-devicons'
call vundle#end()          
filetype plugin indent on 

"-------------------------------------------Editor Settings------------------------------------------------------------
"Remove error notifs
set noerrorbells
"Load local vimrc
set exrc
"Tabs and Indentations
set expandtab
set tabstop=4 "softtabstop=4
"set shiftwidth=4
"set expandtab
set smartindent
set ruler
set nowrap
set smartcase
"Smart Undo History for another plugin
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
"Search related settings
set incsearch
set nohlsearch
set hidden
"Scrolling and numbers
set scrolloff=8
set number
set relativenumber
set encoding=UTF-8
"Fix Backspace
set bs=2
"Fix Command line enter prompt
set shortmess=a
set cmdheight=2
"Add sign column and limit column
set colorcolumn=120
set signcolumn=yes

"-------------------------------------------Vim Appearance-------------------------------------------------------------
"Set colorscheme
set termguicolors
colorscheme gruvbox
autocmd vimenter * hi normal ctermbg=NONE guibg=NONE
"Set colorscheme theme
set bg=dark
autocmd vimenter * AirlineTheme powerlineish 
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline_powerline_fonts = 1
"Fix Windows Terminal Cursor when using Vim
let &t_SI ="\e[5 q"
let &t_SR ="\e[4 q"
let &t_EI ="\e[1 q"
let g:ctrlp_max_files=0
let g:ctrlp_cmd='CtrlP :pwd'

"-------------------------------------------Godot Settings-------------------------------------------------------------
if !has_key( g:, 'ycm_language_server' )
  let g:ycm_language_server = []
endif

let g:ycm_language_server += [
  \   {
  \     'name': 'godot',
  \     'filetypes': [ 'gdscript' ],
  \     'project_root_files': [ 'project.godot' ],
  \     'port': 6008
  \   }
  \ ]
let g:godot_executable = '\\mnt\\c\\Users\\charl\\Documents\\Godot\\Godot.exe'

"-------------------------------------------Generics-------------------------------------------------------------------
"Leader
let mapleader = " "
"Saving
nnoremap <C-s> :w<Cr>
"Normal Mode 
inoremap <m-j><m-k> <esc>
xnoremap <m-j><m-k> <esc>
"Clipboard
set clipboard+=unnamedplus

"-------------------------------------------File Navigation------------------------------------------------------------
"FZF
nnoremap <C-p> :Files<Cr>
" TELESCOPE
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

"-------------------------------------------Search and Replace---------------------------------------------------------
"https://aunemd.me/posts/handy-keymaps-in-vim/
"replace the word under cursor
nnoremap <leader>* :%s/\<<c-r><c-w>\>//g<left><left>

"-------------------------------------------Text Navitation------------------------------------------------------------
"https://aunemd.me/posts/handy-keymaps-in-vim/
"move lines around
nnoremap <leader>k :m-2<cr>==
nnoremap <leader>j :m+<cr>==
xnoremap <leader>k :m-2<cr>gv=gv
xnoremap <leader>j :m+<cr>gv=gv

"-------------------------------------------Buffers--------------------------------------------------------------------
"https://aunemd.me/posts/handy-keymaps-in-vim/
"create a new buffer
nnoremap <leader>B :enew<cr>
"close current bbuffer
nnoremap <leader>bq :bp <bar> bd! #<cr>
"close all open buffers
nnoremap <leader>ba :bufdo bd!<cr>
"Tab to switch to next open buffer
nnoremap <tab> :bnext<cr>
"Shift + Tab to switch to previous open buffer
nnoremap <S-Tab> :bprevious<cr>
"leader key twice to cycle between last two open buffers
nnoremap <leader><leader> <c-^>
"-------------------------------------------Splits---------------------------------------------------------------------
"https://aunemd.me/posts/handy-keymaps-in-vim/
"move to the split in the direction shown, or create a new split
nnoremap <silent> <C-h> :call WinMove('h')<cr>
nnoremap <silent> <C-j> :call WinMove('j')<cr>
nnoremap <silent> <C-k> :call WinMove('k')<cr>
nnoremap <silent> <C-l> :call WinMove('l')<cr>

function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key, '[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

"-------------------------------------------NERDCommenter--------------------------------------------------------------
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
"Toggle Comments
map <C-\> <plug>NERDCommenterToggle

" -------------------------------------------YouCompleteMe--------------------------------------------------------------
"Close window after selecting an autocomplete
let g:ycm_autoclose_preview_window_after_completion = 1
"Close window after exiting insert mode
" let g:ycm_autoclose_preview_window_after_insertion = 1
"Make preview window appear at the bottom
set splitbelow
