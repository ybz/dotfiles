"x Vim color file
" Maintainer:   Streak "at rsmw dot net" Porchfleece
" Last Change:  2008 Dec 12
" Version:      0.3

" This is as close a port as I could manage of the camouflage-inspired
" Glitterbomb theme for TextMate. Due to some fundamental differences
" in the way the two editors handle syntax highlighting, it's more or
" less impossible to make it a perfect match, but it's close enough to
" look fairly nice in most circumstances.
"
" By the way, the original can be found on the TextMate wiki:
" http://wiki.macromates.com/Themes/UserSubmittedThemes

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="quagmire"

" UI customization
hi Normal       guifg=#cfcfcf   guibg=#040f16
hi ModeMsg      guifg=#44444e
hi MoreMsg      guifg=#44444e
hi Visual       guifg=#ffffff guibg=#446b00
hi NonText      guifg=#0000ff
hi MatchParen   guifg=#000000 guibg=#ff00ea gui=bold
hi Cursor       guifg=fg        guibg=bg gui=reverse
hi CursorLine   guibg=#0B1A26
hi CursorLineNr   guifg=#8d7f46 guibg=#1d1d1d
hi TabLine      guibg=bg        guifg=#44444e gui=reverse
hi TabLineSel   guibg=bg        guifg=#44444e gui=none,bold
hi StatusLine guifg=#63adee guibg=#1d1d1d gui=none
hi StatusLineNC guifg=#8d7f46 guibg=#1d1d1d gui=none
hi! link Question MoreMsg
" hi! link Search Visual
hi Search       guifg=#ffffff   guibg=#196aeb
hi! link TabLineFill TabLine
hi Error        guifg=#ffffff   guibg=#d8290e
hi DiffAdd      guifg=#f8f8f8   guibg=#41a83e
hi DiffDelete   guifg=#f8f8f8   guibg=#d03620
hi DiffChange   guifg=#f8f8f8   guibg=#c4b14a
"hi DiffAdd      guifg=#41a83e   guibg=#f8f8f8

" Stuff that most color schemes seem to leave out for some reason
hi! link FoldColumn StatusLine
hi! link SpecialKey String
hi! link SpecialChar Character
hi! link Folded StatusLine
hi! link Directory String
hi! link Label Delimiter
hi Pmenu guibg=#4d6537
hi PmenuSbar guibg=#44444e
hi PmenuSel guibg=#444444 guifg=#ffffff
"hi PmenuThumb guibg=#

" :tab h group-name
hi Comment      guifg=#7b6b60 gui=italic
hi Constant     guifg=#C7B992
hi Number       guifg=#dbfeff
hi Identifier   guifg=#EBD569
hi Function     guifg=#a742ff  
hi Statement    guifg=#0181ff gui=none
hi Operator     guifg=#FF5E00 gui=none
hi Type         guifg=#f2a950 gui=none
hi StorageClass guifg=#7D6C55
hi String       guifg=#608240 
hi Character    guifg=#707576
hi Special      guifg=#e8742c
hi Delimiter    guifg=#cfffa8
hi SpecialComment guifg=#73817d
hi Underlined   guifg=#73817d gui=underline
"hi Tag          guifg=#ebac47
hi Keyword      guifg=#5A87B4   gui=bold

hi PreProc      guifg=#ad484a
hi PreCondit    guifg=#afc4db
hi LineNr       guifg=#564a43 guibg=#1d1d1d gui=none
hi Todo         guifg=bg guibg=#4d6537
"hi htmlTag      guifg=#ffeca1
hi htmlTag guifg=#72bdff gui=bold

hi htmlSpecialTagName   guifg=#ccdb3d
"hi htmlTagName  guifg=#ffffff gui=bold
"hi htmlArg      guifg=#ff6600 gui=none
hi htmlBold     gui=bold
hi htmlItalic   gui=italic
hi Title        guifg=#999966 gui=none
hi htmlTitle    guifg=fg        gui=none
hi tmeSupport   guifg=#7d6c55 gui=none
hi cssTagName   guifg=#c5af75
hi cssClassName guifg=#9b7035
hi cssIdentifier guifg=#81ab78
hi cssValueNumber guifg=#d33f0d
hi link cssValueLength cssValueNumber
hi htmlArg      guifg=#2d6ec8 gui=bold
hi cssFontProp guifg=#c5af75
hi link cssColorProp cssFontProp
hi link cssTextProp cssFontProp
hi link cssBoxProp cssFontProp
hi link cssRenderProp cssFontProp
hi link cssAuralProp cssFontProp
hi link cssRenderProp cssFontProp
hi link cssGeneratedContentProp cssFontProp
hi link cssPagingProp cssFontProp
hi link cssTableProp cssFontProp
hi link cssUIProp cssFontProp

hi cssColor guifg=#f2be3a

hi cssFontAttr guifg=#f9d600
hi link cssColorAttr cssFontAttr 
hi link cssTextAttr cssFontAttr 
hi link cssBoxAttr cssFontAttr 
hi link cssRenderAttr cssFontAttr 
hi link cssAuralAttr cssFontAttr 
hi link cssGeneratedContentAttr cssFontAttr 
hi link cssPagingAttr cssFontAttr 
hi link cssTableAttr cssFontAttr 
hi link cssUIAttr cssFontAttr 
hi link cssCommonAttr cssFontAttr 

hi javascript guifg=#c0c9ce
hi javascriptBraces guifg=#ff9e7a
hi link javascriptParens Delimiter
hi javascriptValue guifg=#ffc175

hi pythonInclude guifg=#ff8e00
hi pythonBoolean guifg=#c6ff42
hi pythonNumber guifg=#c74856

hi djangoArgument guifg=#b8654c
hi djangoStatement guifg=#cf562a

hi link coffeeSpecialOp Delimiter
hi coffeeFuncOp     guifg=#63adee gui=bold
hi coffeeSpecialVar     guifg=#9cc0c4

" TextMate grammars organize their highlight categories a little
" differently. These changes do very little to make things exactly how
" TextMate has them (yeah right, good luck) and instead concentrates
" on making everything a little less goofy-looking.
hi link cssBraces Normal
hi link javascriptBraces Normal
hi link htmlEndTag htmlTag
hi link htmlTagName htmlTag
hi link htmlH1  htmlTitle
"hi link lispVar Identifier
hi link perlMatch Constant
hi link perlMatchStartEnd perlMatch
hi link perlFunctionName Function
hi link perlStatementSub Type
hi link vimHiAttrib Special
hi link macFullscreenBG Normal
"hi link perlSubstitutionSlash perlMatch
