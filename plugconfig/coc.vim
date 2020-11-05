"===
"=== coc.nvim
"===
" Not only coc-snippets the that can jump among the arguments, but also ordinary coc completion
let g:coc_snippet_next = '<c-l>'
let g:coc_snippet_prev = '<c-n>'
let g:snips_author = 'GenmZy_'
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

"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
"" position. Coc only does snippet and additional edit on confirm.
"" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
"if exists('*complete_info')
  "inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
  "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"endif

" Useful commands
nnoremap <silent> sy :<C-u>CocList -A yank<cr>
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

nnoremap <silent> so :CocAction<cr>
nnoremap <silent> sd :CocList diagnostics<cr>
nnoremap <silent> ss :CocList symbols<cr>
nnoremap <silent> sc :CocList commands<cr>
nnoremap <silent> se :CocList location<cr>
nnoremap <silent> st :CocList outline<cr>
nnoremap <silent> sg :CocCommand git.showCommit<cr>

"--- Can be replace now
"nmap <silent> so :CocAction('runCommand', 'editor.action.organizeImport')<CR>
" coc-explorer
"nmap <F2> :CocCommand explorer<CR>
"nmap <F2> :CocCommand explorer --toggle --position=floating --sources=file+<CR>

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap hf <Plug>(coc-funcobj-i)
omap hf <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap hc <Plug>(coc-classobj-i)
omap hc <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

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

"xmap <silent> <leader>k :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
"nmap <silent> <leader>k :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <leader>j <Plug>(coc-range-select)
xmap <silent> <leader>j <Plug>(coc-range-select)

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
