" Always open NERDTree on the left side
autocmd vimenter * NERDTree

" Map F3 to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Show hidden files in NERDTree
let NERDTreeShowHidden=1

" Set NERDTree to open the current file's parent directory
let NERDTreeChDirMode=2

" Set NERDTree to open in the current window
let NERDTreeSplitRoot=0

" Set NERDTree window width
let NERDTreeWinSize=30

" Set NERDTree to refresh automatically
let NERDTreeAutoRefresh=1
