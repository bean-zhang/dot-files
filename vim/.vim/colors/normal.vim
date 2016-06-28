" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   zhuyin <yinzhu@sjtu.edu.cn>
" Last Change:  2010 Jul 2

hi clear
if exists("syntax_on")
  syntax reset
endif
  let g:colors_name = "normal"

set background=dark

syn match cFunction /\<[a-zA-Z_][a-zA-Z_0-9]*\>\s\{0,}(\{1}/
hi def link cFunction Function

  hi Normal                     ctermfg=LightGray        guifg=Gray        ctermbg=Black    guibg=Black
  hi Comment                    ctermfg=DarkGreen   guifg=DarkGreen
  hi Constant                   ctermfg=Red         guifg=Red
  hi Identifier                 ctermfg=DarkCyan    guifg=DarkCyan
  hi Function                   ctermfg=DarkYellow  guifg=DarkYellow
  hi Statement  cterm=bold      ctermfg=Blue        guifg=Blue
  hi Operator                   ctermfg=DarkRed     guifg=DarkRed
  hi PreProc    cterm=bold      ctermfg=DarkMagenta guifg=DarkMagenta
  hi Type                       ctermfg=Cyan        guifg=Cyan
  hi Special    cterm=bold      ctermfg=DarkMagenta guifg=DarkMagenta
  hi Ignore                     ctermfg=DarkGray    guifg=Gray
  hi Error      term=reverse    ctermfg=White       guifg=White       ctermbg=Red      guibg=Red
  hi Todo       term=standout   ctermfg=Black       guifg=Black       ctermbg=Cyan     guibg=Cyan
  hi Search     term=standout   ctermfg=Black       guifg=Black       ctermbg=Yellow   guibg=Yellow

  " Common groups that link to default highlighting.
  " You can specify other highlighting easily.
  hi link String         Constant
  hi link Character      Constant
  hi link Number         Constant
  hi link Boolean        Constant
  hi link Float          Constant
  hi link Conditional    Statement
  hi link Repeat         Statement
  hi link Label          Statement
  hi link Keyword        Statement
  hi link Exception      Statement
  hi link Include        PreProc
  hi link Define         PreProc
  hi link Macro          PreProc
  hi link PreCondit      PreProc
  hi link StorageClass   Statement
  hi link Structure      Statement
  hi link Typedef        Statement
  hi link SpecialChar    Special
  hi link Tag            Special
  hi link Delimiter      Special
  hi link SpecialComment Special
  hi link Debug          Special

