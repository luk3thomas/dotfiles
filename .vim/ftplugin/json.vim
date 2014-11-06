let color15  = "guifg=#ffffff guibg=NONE gui=NONE ctermfg=15  ctermbg=NONE cterm=NONE"
let color131 = "guifg=#af5f5f guibg=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE"
let color243 = "guifg=#767676 guibg=NONE gui=NONE ctermfg=243 ctermbg=NONE cterm=NONE"

exec "hi jsonKeyword " . color15
exec "hi jsonQuote "   . color243
exec "hi jsonString "  . color131
