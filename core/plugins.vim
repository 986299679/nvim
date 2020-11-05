" The plugins that VIM-PLUG manage
call plug#begin('~/.config/nvim/plugged')

" Status line
Plug '986299679/spaceline.vim'
"Plug 'hardcoreplayers/spaceline.vim'

" File navigation
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do' : './install --bin'}
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" Taglist
Plug 'liuchengxu/vista.vim'

" Float window for neovim
Plug 'voldikss/vim-floaterm'

" Git
Plug 'tpope/vim-fugitive'

" Python
Plug 'vim-scripts/indentpython.vim'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }

" Bookmarks
Plug 'kshenoy/vim-signature'
Plug 'itchyny/vim-cursorword'

" Other useful utilities
"Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround' " type ysks' to wrap the word with '' or type cs'`to change 'word' to `word`
Plug 'godlygeek/tabular' " type :Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <LEADER>cc to comment a line
Plug 'vimwiki/vimwiki'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'rhysd/accelerated-jk'

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
Plug 'lifepillar/vim-colortemplate'

" MarkdownPreview(no suits for wsl)
"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }

" Colorscheme
Plug '986299679/ayu-vim'
Plug '986299679/nord-vim', {'branch': 'master'}
Plug '986299679/vim-waves'
Plug '986299679/deus'
Plug '986299679/lavender'
Plug '986299679/snazzy'
Plug 'hardcoreplayers/oceanic-material'
Plug 'morhetz/gruvbox'
Plug '986299679/onedark.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}

" Color enhancement
Plug 'Kjwon15/vim-transparent' " Parent background
Plug '986299679/vim-polyglot' " Enhancing syntax color of a lot of filetypes

" Very nice completion plugin -> vim-IDE
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'liuchengxu/vim-which-key'

" C highlight(have some bug now, so i do not use it.)
"Plug 'jackguo380/vim-lsp-cxx-highlight'

" launch shows
Plug 'hardcoreplayers/dashboard-nvim'

" Code snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Buffer manage
Plug 'vim-scripts/BufOnly.vim'

" Debug tools
Plug 'puremourning/vimspector' ", {'do': './install_gadget.py --enable-c --enable-python --enable-go'}

" vim-go`
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'nathanaelkane/vim-indent-guides'

"Fix :w !sudo tee %
Plug 'lambdalisue/suda.vim'

"defx
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'
Plug 'kristijanhusak/defx-git'

call plug#end()
