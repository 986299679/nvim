" ===
" === FZF
" ===
let g:vista_fzf_preview = ['down:50%']
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.7 } }
set rtp+=/usr/local/opt/fzf
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
let g:fzf_preview_window = 'down:50%'
"let g:fzf_layout = { 'down': '~50%' }
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:airline#extensions#fzf#enabled = 1
nnoremap <silent> <leader>f :Files<cr>
nnoremap <silent> <leader>a :Rg<cr>
"nnoremap <silent> <leader>a :Ag<cr>
""Rg has some cpu occupy problems in wsl
"nnoremap <silent> <leader>a :Rg<cr> " some cpu bugs for rg
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>e :CocList extensions<cr>
nnoremap <silent> <leader>ss :Snippets<cr>
nnoremap <silent> <leader>ct :Colors<cr>
nnoremap <silent> <leader>mk :Marks<cr>
" For fuzzy find current lines, which is better than '/' to search
nnoremap <silent> <leader>l :BLines<cr>
" Git searches
nnoremap <silent> <leader>gf :GFiles?<cr>
nnoremap <silent> <leader>gc :Commits<cr>
nnoremap <silent> si :History<cr>

command! -bang Config call fzf#vim#files($root, <bang>0)
nnoremap <silent> <leader>w :Config<cr>
