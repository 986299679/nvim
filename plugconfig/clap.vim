" ===
" === clap
" ===
"function! clap#find_file() abort
  "Clap files ++finder=rg --ignore --hidden --files
"endfunction

let g:clap_insert_mode_only = v:true
let s:user_init_vim         = expand($HOME . '/.config/nvim/init.vim')
let s:user_color_vim        = expand($root. '/colors/colors.vim')
let s:user_plugins_vim      = expand($root. '/core/plugins.vim')
let s:user_variable_vim     = expand($root. '/core/variables.vim')
let s:user_zshrc            = expand($HOME . '/.zshrc')

"let g:clap_cache_directory = $DATA_PATH . '/clap'
let g:clap_cache_directory = $HOME . '/.vim/cache/clap'
"let g:clap_theme = 'material_design_dark'
let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_layout = { 'relative': 'editor' }
let g:clap_enable_icon = 1
let g:clap_search_box_border_style = 'curve'
let g:clap_provider_grep_enable_icon = 1
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '

let g:clap_provider_personalconf = {
      \ 'source': [s:user_init_vim,s:user_color_vim,s:user_plugins_vim,s:user_variable_vim,s:user_zshrc],
      \ 'sink': 'e',
      \ }

" A funtion to config highlight of ClapSymbol
" when the background color is opactiy
"function! s:ClapSymbolHL() abort
    "let s:current_bgcolor = synIDattr(hlID("Normal"), "bg")
    "if s:current_bgcolor == ''
        "hi ClapSymbol guibg=NONE ctermbg=NONE
    "endif
"endfunction

"autocmd User ClapOnEnter call s:ClapSymbolHL()
"" Show all diagnostics  ❯❯❯ (Raphael 1 day ago) Update README.md
"nnoremap <silent> sd  :Clap coc_diagnostics<CR>
"" Manage extensions
"nnoremap <silent> se  :Clap coc_extensions<CR>
"" Show commands
"nnoremap <silent> sc  :Clap coc_commands<CR>
"" Search workspace symbols
"nnoremap <silent> ss  :Clap coc_symbols<CR>
"nnoremap <silent> st  :Clap coc_outline<CR>
"nnoremap <silent> cs  :Clap coc_services<CR>
nnoremap <silent> si :<C-u>Clap history<CR>
"nnoremap <silent> sw :<C-u>Clap windows<CR>
nnoremap <silent> se :<C-u>Clap loclist<CR>
nnoremap <silent> <leader>gf :<C-u>Clap git_diff_files<CR>
nnoremap <silent> <Leader>a  :<C-u>Clap grep2<CR>
nnoremap <silent> <Leader>b  :<C-u>Clap buffers<CR>
nnoremap <silent> <Leader>ct :<C-u>Clap colors<CR>
nnoremap <silent> <Leader>mk :<C-u>Clap marks<CR>
nnoremap <silent> <leader>u  :<C-u>Clap filer<CR>
nnoremap <silent> <Leader>f   :<C-u>Clap files ++finder=rg --ignore --hidden --files<cr>
"nnoremap <silent> <Leader>fg :<C-u>Clap gfiles<CR>
"nnoremap <silent> <Leader>fw :<C-u>Clap grep ++query=<cword><cr>
"nnoremap <silent> <Leader>fv :<C-u>Clap grep ++query=@visual<CR>
nnoremap <silent> <Leader>co :Clap personalconf<CR>
