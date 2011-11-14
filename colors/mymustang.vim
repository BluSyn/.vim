" Maintainer:	Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:	September 25 2008

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "mymustang"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine guibg=#303030 ctermbg=236
  hi CursorColumn guibg=#303030 ctermbg=236
  hi MatchParen guifg=#afffaf guibg=#3a3a3a gui=none ctermfg=157 ctermbg=237 cterm=none
  hi Pmenu guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel guifg=#000000 guibg=#afd700 ctermfg=0 ctermbg=148
endif

" General colors
hi Cursor 		guifg=NONE    guibg=#626262 gui=none ctermbg=241
hi Normal 		guifg=#ffffd7 guibg=#202020 gui=none ctermfg=230
"hi NonText 	guifg=#808080 guibg=#303030 gui=none ctermfg=244 ctermbg=231
hi LineNr 		guifg=#808080 guibg=#080808 gui=none ctermfg=244 ctermbg=232
hi StatusLine 	guifg=#dadada guibg=#444444 gui=italic ctermfg=253 ctermbg=238 cterm=italic
hi StatusLineNC guifg=#949494 guibg=#444444 gui=none ctermfg=246 ctermbg=238
hi VertSplit 	guifg=#444444 guibg=#444444 gui=none ctermfg=238 ctermbg=238
hi Folded 		guibg=#384048 guifg=#a0a8b0 gui=none ctermbg=4 ctermfg=248
hi Title		guifg=#e4e4e4 gui=none ctermfg=254
hi Visual		guifg=#e4e4e4 guibg=#3c414c gui=none ctermfg=254 ctermbg=4
hi SpecialKey	guifg=#808080 gui=none ctermfg=244

" Syntax highlighting
hi Comment 		guifg=#808080 gui=italic ctermfg=244
hi Todo 		guifg=#8a8a8a gui=italic ctermfg=245
hi Boolean      guifg=#d78700 gui=none ctermfg=172
hi String 		guifg=#d75f5f gui=none ctermfg=167 cterm=none
hi Identifier 	guifg=#d7af87 gui=none ctermfg=180
hi Function 	guifg=#ffaf5f gui=none ctermfg=215
hi Type 		guifg=#8787af gui=none ctermfg=103
hi Statement 	guifg=#8787af gui=none ctermfg=103
hi Keyword		guifg=#ff8700 gui=none ctermfg=208
hi Constant 	guifg=#ff8700 gui=none ctermfg=208
hi Number		guifg=#ff8700 gui=none ctermfg=208
hi Special		guifg=#ff8700 gui=none ctermfg=208
hi PreProc 		guifg=#ffffd7 gui=none ctermfg=230
hi Todo         guifg=#000000 guibg=#e6ea50 gui=italic

" Column Line
hi ColorColumn guibg=#afafaf ctermbg=145

" Code-specific colors
hi pythonOperator guifg=#8787af gui=none ctermfg=103
hi phpOperator guifg=#8787af gui=none ctermfg=103
