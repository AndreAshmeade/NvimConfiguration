"Fugitive configuration

" Keybindings
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gs :Gstatus<CR>

" Integrate with Syntastic
let g:syntastic_git_check_hook = 'git diff --name-only HEAD'
let g:syntastic_git_status_hook = 'git rev-parse --git-dir'
