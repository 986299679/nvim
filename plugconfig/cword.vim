if g:colors_name == "nord" || g:colors_name == "onedark"
  let g:cursorword_highlight = 0
  highlight CursorWord0 guibg=#4c566a
  highlight CursorWord1 guibg=#4c566a
elseif g:colors_name == "everforest"
  if &background == "dark"
    "let g:cursorword_highlight = 0
    "highlight CursorWord0 guibg=#576268
    "highlight CursorWord1 guibg=#576268
  else
    let g:cursorword_highlight = 0
    highlight CursorWord0 guibg=#edead5
    highlight CursorWord1 guibg=#edead5
  endif
elseif g:colors_name == "space_vim_theme" && &background=="light"
  let g:cursorword_highlight = 0
  highlight CursorWord0 guibg=#F0EEE4
  highlight CursorWord1 guibg=#F0EEE4
elseif g:colors_name == "lavender"
  let g:cursorword_highlight = 0
  if &background == "light"
    highlight CursorWord0 guibg=#e2e0ea
    highlight CursorWord1 guibg=#e2e0ea
  else
    highlight CursorWord0 guibg=#4c566a
    highlight CursorWord1 guibg=#4c566a
  endif
elseif g:colors_name == "ayu" && ayucolor == "light"
  let g:cursorword_highlight = 0
  highlight CursorWord0 guibg=#F0EEE4
  highlight CursorWord1 guibg=#F0EEE4
elseif g:colors_name == "ayu" && ayucolor == "mirage"
  let g:cursorword_highlight = 0
  highlight CursorWord0 guibg=#4c566a
  highlight CursorWord1 guibg=#4c566a
endif
