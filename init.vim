syntax on
set nocompatible
filetype off                

"-------------------------------------------Vim Plugins----------------------------------------------------------------
" `:PluginInstall`
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
    " Plug 'ncm2/ncm2'
    " Plug 'SirVer/ultisnips'
    " Plug 'honza/vim-snippets'
    " Let Vundle handle plugins"
    " " Plugin 'VundleVim/Vundle.vim'
    " File Navigation"
    Plug 'akinsho/flutter-tools.nvim'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/goyo.vim'
    " Plug 'junegunn/fzf', { 'do' : { -> fzf#install()}}
    " Plug 'junegunn/fzf.vim'
    " Plug 'vifm/vifm.vim'                           "File navigator
    " Plug 'mcchrish/nnn.vim'                        "File navigator
    " Plugin 'kien/ctrlp.vim'                          "Add Fuzzy finder
    " Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "Add Highlights and Icons to nerdtree
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " Custom ColorScheme"
    " Plug 'phanviet/vim-monokai-pro'
    Plug 'morhetz/gruvbox'                         "Full Transparent
    Plug 'sainnhe/gruvbox-material'                "Full Transparent
    " Plug 'sainnhe/sonokai'
    " Plug 'patstockwell/vim-monokai-tasty'          "Full Transparent
    " Status Bars
    " Plug 'vim-airline/vim-airline'                 "Add status bar
    " Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/lightline.vim'
    " Plug 'taohexxx/lighline-buffer'
    Plug 'bling/vim-bufferline'
    " " Syntaxing
    Plug 'sheerun/vim-polyglot'
    " Plugin 'valloric/YouCompleteMe'                  "Autocomplete
    Plug 'scrooloose/syntastic'
    Plug 'ap/vim-css-color'                        "Display color in vim
    " Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
    " Plug 'sbdchd/neoformat'
    " Plug 'uiiaoo/java-syntax.vim'
    " " Commenting
    Plug 'scrooloose/nerdcommenter'
    " " Git Management
    Plug 'airblade/vim-gitgutter'
    Plug 'APZelos/blamer.nvim'
    Plug 'tpope/vim-fugitive'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}                       "Nodejs
    Plug 'simeji/winresizer'                       "Window Resizer for VIM
    Plug 'Raimondi/delimitMate'
    Plug 'mhinz/vim-startify'
    " " Godot
    Plug 'habamax/vim-godot'
    " " Plugin 'hugolgst/vimsence'
    Plug 'andweeb/presence.nvim'
    " " Add icons
    Plug 'ryanoasis/vim-devicons'
    " " Text navigation
    Plug 'mg979/vim-visual-multi'
    Plug 'majutsushi/tagbar'
    Plug 'mattn/emmet-vim'                         "Emmets
    Plug 'tpope/vim-surround'                      "Surround with characters
    " " Plugin 'kana/vim-textobj-function'
    Plug 'wfxr/minimap.vim'
    " Plug 'severin-lemaignan/vim-minimap'
    " Plug 'koron/minimap-vim'
    Plug 'luochen1990/rainbow'

call plug#end()          
filetype plugin indent on 

"-------------------------------------------Editor Settings------------------------------------------------------------
"Remove error notifs
set noerrorbells
"Load local vimrc
" set exrc
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
"autocmd vimenter * AirlineTheme powerlineish
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#whitespace#enabled = 0
" let g:airline_powerline_fonts = 1

"Fix Windows Terminal Cursor when using Vim
let &t_SI ="\e[5 q"
let &t_SR ="\e[4 q"
let &t_EI ="\e[1 q"
let g:ctrlp_max_files=0
let g:ctrlp_cmd='CtrlP :pwd'

"Vim Lightline
" set hidden  " allow buffer switching without saving
" set showtabline=2  " always show tabline
"
" use lightline-buffer in lightline
" let g:lightline = {
"     \ 'tabline': {
"     \   'left': [ [ 'bufferinfo' ],
"     \             [ 'separator' ],
"     \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
"     \   'right': [ [ 'close' ], ],
"     \ },
"     \ 'component_expand': {
"     \   'buffercurrent': 'lightline#buffer#buffercurrent',
"     \   'bufferbefore': 'lightline#buffer#bufferbefore',
"     \   'bufferafter': 'lightline#buffer#bufferafter',
"     \ },
"     \ 'component_type': {
"     \   'buffercurrent': 'tabsel',
"     \   'bufferbefore': 'raw',
"     \   'bufferafter': 'raw',
"     \ },
"     \ 'component_function': {
"     \   'bufferinfo': 'lightline#buffer#bufferinfo',
"     \ },
"     \ 'component': {
"     \   'separator': '',
"     \ },
"     \ }
"
" " remap arrow keys
" nnoremap <Left> :bprev<CR>
" nnoremap <Right> :bnext<CR>
"
" " lightline-buffer ui settings
" " replace these symbols with ascii characters if your environment does not support unicode
" let g:lightline_buffer_logo = ' '
" let g:lightline_buffer_readonly_icon = ''
" let g:lightline_buffer_modified_icon = '✭'
" let g:lightline_buffer_git_icon = ' '
" let g:lightline_buffer_ellipsis_icon = '..'
" let g:lightline_buffer_expand_left_icon = '◀ '
" let g:lightline_buffer_expand_right_icon = ' ▶'
" let g:lightline_buffer_active_buffer_left_icon = ''
" let g:lightline_buffer_active_buffer_right_icon = ''
" let g:lightline_buffer_separator_icon = '  '
"
" " enable devicons, only support utf-8
" " require <https://github.com/ryanoasis/vim-devicons>
" let g:lightline_buffer_enable_devicons = 1
"
" " lightline-buffer function settings
" let g:lightline_buffer_show_bufnr = 1
"
" " :help filename-modifiers
" let g:lightline_buffer_fname_mod = ':t'
"
" " hide buffer list
" let g:lightline_buffer_excludes = ['vimfiler']
"
" " max file name length
" let g:lightline_buffer_maxflen = 30
"
" " max file extension length
" let g:lightline_buffer_maxfextlen = 3
"
" " min file name length
" let g:lightline_buffer_minflen = 16
"
" " min file extension length
" let g:lightline_buffer_minfextlen = 3
"
" " reserve length for other component (e.g. info, close)
" let g:lightline_buffer_reservelen = 20
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
nnoremap <c-s> :w<cr>
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

" -------------------------------------------Minimap--------------------------------------------------------------
let g:minimap_width = 10
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

" -------------------------------------------COC--------------------------------------------------------------
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
" nmap <silent> <C-s> <Plug>(coc-range-select)
" xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

let g:rainbow_active = 1

nmap <F8> :TagbarToggle<CR>

let g:tagbar_ctags_bin = 'C:\Users\charl\Documents\ctags58\ctags.exe'

" let g:neoformat_try_node_exe = 1
" autocmd BufWritePre *.js NeoFormat
" nnoremap gp :silent %!prettier --stdin-filepath %<CR>

" when running at every change you may want to disable quickfix
" let g:prettier#quickfix_enabled = 0
"
" autocmd TextChanged,InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.svelte,*.yaml,*.html PrettierAsync
"
" let g:prettier#config#single_quote = 'true'
" let g:prettier#config#trailing_comma = 'all'
" let g:prettier#config#parser = 'babylon'
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
