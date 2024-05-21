" Specify a directory for plugins
call plug#begin('~/.vim/plugged')


"Standard Plugs 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'theoldmoon0602/coc-plug'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'thirtythreeforty/lessspace.vim'

Plug 'akinsho/bufferline.nvim'  

"Themes 
Plug 'craftzdog/solarized-osaka.nvim'
Plug 'morhetz/gruvbox'

"Git 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

"Formatting
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
Plug 'preservim/nerdcommenter'

"Python
Plug 'davidhalter/jedi-vim'
Plug 'hdima/python-syntax'


"Javascript Syntax
Plug 'pangloss/vim-javascript'
Plug 'leshill/vim-json'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'

"Java 
Plug 'cespare/vim-toml'
Plug 'nvim-java/nvim-java-core'
Plug 'nvim-java/nvim-java-test'
Plug 'mfussenegger/nvim-jdtls'
Plug 'mikelue/vim-maven-plugin'

"Html
Plug 'mattn/emmet-vim'

Plug 'Shougo/vimfiler'
Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim'

"Bash
Plug 'vim-scripts/bash-support.vim'

"Rust
Plug 'rust-lang/rust.vim'
Plug 'simrat39/rust-tools.nvim'

"C++/C
Plug 'deoplete-plugins/deoplete-clang'
Plug 'rhysd/vim-clang-format'
Plug 'derekwyatt/vim-protodef'
Plug 'octol/vim-cpp-enhanced-highlight'

"SQL
 Plug 'xemptuous/sqlua.nvim'

"Code Snippets
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'


"Development Tools
Plug 'sheerun/vim-polyglot'
Plug 'folke/neodev.nvim'
Plug 'windwp/nvim-autopairs'

"Tabline plug
Plug 'vim-syntastic/syntastic'

"treesitter plugs
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'

"auto completion 
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"LSP 
Plug 'neovim/nvim-lspconfig'
Plug 'tamago324/nlsp-settings.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'williamboman/mason.nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'


"interface and functionality
Plug 'Tastyep/structlog.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'


"Navigation & Format 
Plug 'junegunn/fzf'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'justinmk/vim-sneak'
Plug 'nvim-lualine/lualine.nvim'


" Initialize plugin system
call plug#end()

inoremap jk <ESC>
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab


" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


"custom setting for clangformat
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']


" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto-format
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_racket_racket_checker=1

" Enable the lualine highlights
let g:lualine_highlight_enabled = 1

" Set the highlight groups for the lualine highlights
let g:lualine_highlight_groups = {
      \ 'LualineCurrentLine': 'DiffAdd',
      \ 'LualineMatchedLines': 'DiffChange',
      \ }

" Set the key bindings for the lualine commands
nnoremap <silent> <leader>sl :call lualine#sort()<CR>
nnoremap <silent> <leader>fl :call lualine#filter()<CR>
nnoremap <silent> <leader>tl :call lualine#transform()<CR>


"Enable enhanced C++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

let g:plugin_option = 'value'

" Enable protodef and map leader key + pd to generate function prototypes
map <leader>pd :Protodef<CR>

set laststatus=2

" Enable bash syntax highlighting
au BufRead,BufNewFile *.sh set filetype=bash

" Map F5 to run the current script
nnoremap <F5> :!bash %<CR>

" Map F8 to open a terminal window
nnoremap <F8> :terminal<CR>

" Enable syntastic for bash scripts
let g:syntastic_bash_checkers = ['bash']


" Configuration for fzf plugin in Neovim

" Set the keybinding prefix to <leader>f
let g:fzf_command_prefix = '<leader>f'

" Configure the preview window to be displayed vertically on the right side of the screen
let g:fzf_preview_window = 'right:60%'

" Map <leader>ff to search for files
nnoremap <silent> <leader>ff :FZF<CR>

" Map <leader>fl to search for lines in the current file
nnoremap <silent> <leader>fl :FZF --line<CR>

" Map <leader>fw to search for words in the current file
nnoremap <silent> <leader>fw :FZF --word<CR>


" Configuration for vim-surround plugin in Neovim

" Map <leader>cs to change the surrounding characters
nnoremap <silent> <leader>cs :Surround<Space>

" Map <leader>ds to delete the surrounding characters
nnoremap <silent> <leader>ds :Surround<BS>

" Map <leader>ys to add surrounding characters
nnoremap <silent> <leader>ys :Surround<Space>


nnoremap <silent> <F2> :set number!<CR>
nnoremap <silent> <F3> :set relativenumber!<CR>
nnoremap <silent> <F4> :set cursorline!<CR>
nnoremap <silent> <F5> :SyntasticCheck<CR>
nnoremap <silent> <F6> :ALEFix<CR>
nnoremap <silent> <F7> :Unite -no-split buffer<CR>
nnoremap <silent> <F8> :Unite -no-split file<CR>
nnoremap <silent> <F9> :Unite -no-split grep<CR>
nnoremap <silent> <F10> :Unite -no-split outline<CR>
nnoremap <silent> <F11> :Denite grep<CR>
nnoremap <silent> <F12> :Denite -resume<CR>


" Enable the fugitive plugin
filetype plugin on

" Set key bindings for fugitive commands
nmap <C-g> :Gstatus<CR>
nmap <C-p> :Gdiff<CR>
nmap <C-c> :Gcommit<CR>


nnoremap <leader>h :wincmd h<Cr>
nnoremap <leader>j :wincmd j<Cr>
nnoremap <leader>k :wincmd k<Cr>
nnoremap <leader>l :wincmd l<Cr>
nnoremap <silent><leader>[ :BufferLineCyclePrev<Cr>
nnoremap <silent><leader>] :BufferLineCycleNext<Cr>
nnoremap <silent><leader>q :bdelete<Cr>
