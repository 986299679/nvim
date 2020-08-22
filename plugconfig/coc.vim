"===
"=== coc.nvim
"===
" Not only coc-snippets the that can jump among the arguments, but also ordinary coc completion
let g:coc_snippet_next = '<c-l>'
let g:coc_snippet_prev = '<c-n>'
autocmd FileType c,cpp,java,lua let b:coc_suggest_blacklist = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
silent! au BufEnter,BufRead,BufNewFile * silent! unmap if
let g:coc_global_extensions = [
      \ 'coc-python',
      \ 'coc-html',
      \ 'coc-json',
      \ 'coc-css',
      \ 'coc-yank',
      \ 'coc-lists',
      \ 'coc-gitignore',
      \ 'coc-vimlsp',
      \ 'coc-tailwindcss',
      \ 'coc-java',
      \ 'coc-xml',
      \ 'coc-yaml',
      \ 'coc-highlight',
      \ 'coc-sh',
      \ 'coc-vetur',
      \ 'coc-marketplace',
      \ 'coc-floaterm',
      \ 'coc-db',
      \ 'coc-lua',
      \ 'coc-tsserver',
      \ 'coc-go',
      \ 'coc-markdownlint',
      \ 'coc-markmap',
      \ 'coc-bookmark',
      \ 'coc-git',
      \ 'coc-prettier',
      \ 'coc-snippets',
      \ 'coc-fzf-preview',
      \ ]
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]    =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<Tab>" :
            \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()
" Use <cr> to trigger the full snippets complete(including '()' and arguments)
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Useful commands
"nnoremap <silent> sy :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gl <Plug>(coc-declaration)
nmap <silent> go <Plug>(coc-refactor)
nmap <silent> sn <Plug>(coc-diagnostic-next)
nmap <silent> sr <Plug>(coc-rename)
nmap <silent> sf <Plug>(coc-format)
vmap <silent> sf <Plug>(coc-format-selected)

nnoremap <silent> sy :CocFzfList yank<cr>
nnoremap <silent> so :CocFzfList actions<cr>
nnoremap <silent> sd :CocFzfList diagnostics<cr>
nnoremap <silent> ss :CocFzfList symbols<cr>
nnoremap <silent> sc :CocFzfList commands<cr>
nnoremap <silent> se :CocFzfList location<cr>
nnoremap <silent> st :CocFzfList outline<cr>
"--- Can be replace now
"nmap <silent> so :CocAction('runCommand', 'editor.action.organizeImport')<CR>
" coc-explorer
"nmap <F2> :CocCommand explorer<CR>
"nmap <F2> :CocCommand explorer --toggle --position=floating --sources=file+<CR>

" coc-highlight
"autocmd CursorHold * silent call CocActionAsync('highlight')
au CursorHoldI * sil call CocActionAsync('showSignatureHelp')
call coc#add_command('vista', ':Vista!!')
call coc#add_command('table', ':TableModeToggle')

nnoremap <silent> <leader>r :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" solve the huge file read problem
let g:trigger_size = 0.5 * 1048576
augroup hugefile
  autocmd!
  autocmd BufReadPre *
        \ let size = getfsize(expand('<afile>')) |
        \ if (size > g:trigger_size) || (size == -2) |
        \   echohl WarningMsg | echomsg 'WARNING: altering options for this huge file!' | echohl None |
        \   exec 'CocDisable' |
        \ else |
        \   exec 'CocEnable' |
        \ endif |
        \ unlet size
augroup END