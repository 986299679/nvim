" ===
" === source files
" ===

source $root/core/variables.vim

source $root/mappings/mappings.vim

source $root/functions/highlight.vim

source $root/functions/features.vim

source $root/core/plugins.vim

source $root/plugconfig/dashboard.vim

source $root/plugconfig/vista.vim

source $root/plugconfig/coc.vim

source $root/functions/execute.vim

source $root/plugconfig/snippet.vim

source $root/plugconfig/whichkey.vim

source $root/plugconfig/fzf.vim

source $root/plugconfig/statusline.vim

source $root/plugconfig/defx.vim

source $root/colors/colors.vim

source $root/plugconfig/floaterm.vim

source $root/plugconfig/wildfire.vim

source $root/plugconfig/cxx-highlight.vim

source $root/plugconfig/cword.vim

source $root/plugconfig/gitgutter.vim

" load project vim configuration.
if filereadable("./project.vim")
  source ./project.vim
endif
