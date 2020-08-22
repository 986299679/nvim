noremap <silent> k j
noremap <silent> j h
noremap <silent> h i
noremap <silent> i k
" accelerated_jk
nmap k <Plug>(accelerated_jk_gj)
nmap i <Plug>(accelerated_jk_gk)

noremap <silent> H I

map <silent> K 5k
map <silent> J 14j
map <silent> I 5i
map <silent> L 14l

" Resize splits with arrow keys
noremap <up> :res +5<CR>
noremap <down> :res -5<CR>
noremap <left> :vertical resize-5<CR>
noremap <right> :vertical resize+5<CR>

" better code in insert mode.
inoremap { {}<Left>
inoremap ( ()<Left>
"inoremap < <><Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

"" Cursor shape
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_SR = "\<Esc>]50;CursorShape=2\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_ut=''

map S :w<CR>
map s <nop>
map . <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>

"Fold
map <LEADER>z zR

map <F3> :tabe<CR>
map <F8> :set splitright<CR>:vsplit<CR>
map <F5> :set nosplitright<CR>:vsplit<CR>
map <F7> :set nosplitbelow<CR>:split<CR>
map <F6> :set splitbelow<CR>:split<CR>

" s<direction> map to cross the split windows
map sj <C-w>h
map sk <C-w>j
map si <C-w>k
map sl <C-w>l

" quick buffer-change
map <LEADER>1 :buffer 1<CR>
map <LEADER>2 :buffer 2<CR>
map <LEADER>3 :buffer 3<CR>
map <LEADER>4 :buffer 4<CR>
map <LEADER>5 :buffer 5<CR>
map <LEADER>6 :buffer 6<CR>
map <LEADER>7 :buffer 7<CR>
map <LEADER>8 :buffer 8<CR>
map <LEADER>9 :buffer 9<CR>

" quick tabpage-change
map - :-tabnext<CR>
map = :tabnext<CR>

" put a place holder to edit format-similar coding quickly
nnoremap \\ <Esc>/<++><CR>:nohlsearch<CR>c4l
