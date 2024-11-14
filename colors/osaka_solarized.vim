" Vim color file
" Maintainer: ioksc (based on color schema by gh:craftzdog/solarized-osaka.nvim)
" Last Change: 2024

set background=dark
highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "osaka_solarized"

" Base Colors
let s:base03      = "#00141A"
let s:base02      = "#002B36"
let s:base01      = "#073642"
let s:base00      = "#586E75"
let s:base0       = "#657B83"
let s:base1       = "#9EACAD"
let s:base2       = "#ADB8B8"
let s:base3       = "#EEE8D5"
let s:base4       = "#FDF6E3"
let s:white       = "#FFFFFF"

" Accent Colors
let s:yellow      = "#B58900"
let s:orange      = "#CB4B16"
let s:red         = "#DC322F"
let s:magenta     = "#D33682"
let s:violet      = "#6C71C4"
let s:blue        = "#268BD2"
let s:cyan        = "#2AA198"
let s:green       = "#859900"

" Light variants
let s:yellow_light  = "#FFE999"
let s:orange_light  = "#FF9468"
let s:red_light     = "#FF9D9B"
let s:magenta_light = "#FF77B9"
let s:violet_light  = "#CCCFFF"
let s:blue_light    = "#AADCFF"
let s:cyan_light    = "#B9FFFA"
let s:green_light   = "#D6FFAC"

" Dark variants
let s:yellow_dark   = "#332700"
let s:orange_dark   = "#5C220A"
let s:red_dark      = "#57100F"
let s:magenta_dark  = "#541232"
let s:violet_dark   = "#25285B"
let s:blue_dark     = "#103956"
let s:cyan_dark     = "#103B3D"
let s:green_dark    = "#2C3300"

" Basic UI Elements
exe "hi! Normal"         "guifg=".s:base1      "guibg=".s:base03     "gui=NONE"
exe "hi! EndOfBuffer"    "guifg=".s:base03     "guibg=".s:base03     "gui=NONE"
exe "hi! CursorLine"     "guifg=NONE"          "guibg=".s:base01     "gui=NONE"
exe "hi! CursorColumn"   "guifg=NONE"          "guibg=".s:base01     "gui=NONE"
exe "hi! CursorLineNr"   "guifg=".s:red        "guibg=NONE"          "gui=NONE"

exe "hi! LineNr"         "guifg=".s:yellow     "guibg=NONE"          "gui=NONE"
exe "hi! Visual"         "guifg=NONE"          "guibg=".s:base3      "gui=NONE"
exe "hi! Search"         "guifg=".s:base03     "guibg=".s:yellow     "gui=NONE"
exe "hi! IncSearch"      "guifg=".s:base03     "guibg=".s:orange     "gui=NONE"
exe "hi! StatusLine"     "guifg=".s:base2      "guibg=".s:base01     "gui=NONE"
exe "hi! StatusLineNC"   "guifg=".s:base00     "guibg=".s:base02     "gui=NONE"
exe "hi! VertSplit"      "guifg=".s:base01     "guibg=".s:base01     "gui=NONE"
exe "hi! Folded"         "guifg=".s:base0      "guibg=".s:base02     "gui=bold"
exe "hi! FoldColumn"     "guifg=".s:base0      "guibg=".s:base02     "gui=NONE"
exe "hi! Pmenu"          "guifg=".s:base2      "guibg=".s:base02     "gui=NONE"
exe "hi! PmenuSel"       "guifg=".s:base03     "guibg=".s:blue       "gui=NONE"
exe "hi! PmenuSbar"      "guifg=".s:base02     "guibg=".s:base02     "gui=NONE"
exe "hi! PmenuThumb"     "guifg=".s:base0      "guibg=".s:base0      "gui=NONE"
exe "hi! TabLine"        "guifg=".s:base0      "guibg=".s:base02     "gui=NONE"
exe "hi! TabLineFill"    "guifg=".s:base0      "guibg=".s:base02     "gui=NONE"
exe "hi! TabLineSel"     "guifg=".s:base2      "guibg=".s:base01     "gui=NONE"

" Syntax Elements
exe "hi! Comment"        "guifg=".s:base00     "guibg=NONE"          "gui=italic"
exe "hi! Todo"           "guifg=".s:base02     "guibg=".s:blue_light   "gui=bold"
exe "hi! Constant"       "guifg=".s:green      "guibg=NONE"          "gui=NONE"
exe "hi! String"         "guifg=".s:cyan       "guibg=NONE"          "gui=NONE"
exe "hi! Character"      "guifg=".s:green      "guibg=NONE"          "gui=NONE"
exe "hi! Identifier"     "guifg=".s:blue       "guibg=NONE"          "gui=NONE"
exe "hi! Statement"      "guifg=".s:orange     "guibg=NONE"          "gui=NONE"
exe "hi! PreProc"        "guifg=".s:magenta    "guibg=NONE"          "gui=NONE"
exe "hi! Type"           "guifg=".s:yellow     "guibg=NONE"          "gui=NONE"
exe "hi! Special"        "guifg=".s:violet     "guibg=NONE"          "gui=NONE"
exe "hi! Error"          "guifg=".s:red        "guibg=NONE"          "gui=bold"
exe "hi! MatchParen"     "guifg=".s:base03     "guibg=".s:blue       "gui=bold"

" Add custom highlight groups

" JavaScript (expandido)
exe "hi! jsGlobalObjects"    "guifg=".s:blue       "guibg=NONE"         "gui=bold"
exe "hi! jsThis"             "guifg=".s:magenta    "guibg=NONE"         "gui=italic"
exe "hi! jsOperator"         "guifg=".s:yellow     "guibg=NONE"         "gui=bold"
exe "hi! jsDestructuringBlock" "guifg=".s:blue     "guibg=NONE"         "gui=italic"
exe "hi! jsObjectKey"        "guifg=".s:cyan       "guibg=NONE"         "gui=NONE"
exe "hi! jsArrowFunction"    "guifg=".s:magenta    "guibg=NONE"         "gui=bold"
exe "hi! jsModuleKeyword"    "guifg=".s:violet     "guibg=NONE"         "gui=bold"
exe "hi! jsNull"             "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! jsUndefined"        "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! jsClassMethodType"  "guifg=".s:violet     "guibg=NONE"         "gui=italic"
exe "hi! jsStorageClass"     "guifg=".s:blue       "guibg=NONE"         "gui=bold"
exe "hi! jsTemplateString"   "guifg=".s:cyan_light "guibg=NONE"         "gui=NONE"
exe "hi! jsTemplateBraces"   "guifg=".s:magenta    "guibg=NONE"         "gui=bold"
exe "hi! jsRegexpString"     "guifg=".s:red_light  "guibg=NONE"         "gui=NONE"

" Python (expandido)
exe "hi! pythonRepeat"       "guifg=".s:green      "guibg=NONE"         "gui=bold"
exe "hi! pythonOperator"     "guifg=".s:yellow     "guibg=NONE"         "gui=bold"
exe "hi! pythonInclude"      "guifg=".s:red        "guibg=NONE"         "gui=bold"
exe "hi! pythonStatement"    "guifg=".s:green      "guibg=NONE"         "gui=bold"
exe "hi! pythonException"    "guifg=".s:red        "guibg=NONE"         "gui=bold"
exe "hi! pythonExClass"      "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! pythonAsync"        "guifg=".s:magenta    "guibg=NONE"         "gui=italic"
exe "hi! pythonStrFormat"    "guifg=".s:cyan_light "guibg=NONE"         "gui=NONE"
exe "hi! pythonStrFormatting" "guifg=".s:cyan      "guibg=NONE"         "gui=bold"
exe "hi! pythonDottedName"   "guifg=".s:violet     "guibg=NONE"         "gui=italic"
exe "hi! pythonDecoratorName" "guifg=".s:magenta   "guibg=NONE"         "gui=italic"
exe "hi! pythonRawString"    "guifg=".s:cyan_light "guibg=NONE"         "gui=NONE"
exe "hi! pythonBytesEscape"  "guifg=".s:red_light  "guibg=NONE"         "gui=NONE"
exe "hi! pythonStrTemplate"  "guifg=".s:cyan       "guibg=NONE"         "gui=italic"

" HTML (expandido)
exe "hi! htmlSpecialTagName" "guifg=".s:green      "guibg=NONE"         "gui=bold"
exe "hi! htmlSpecialChar"    "guifg=".s:orange     "guibg=NONE"         "gui=NONE"
exe "hi! htmlLink"           "guifg=".s:blue       "guibg=NONE"         "gui=underline"
exe "hi! htmlBold"           "guifg=".s:base2      "guibg=NONE"         "gui=bold"
exe "hi! htmlItalic"         "guifg=".s:base2      "guibg=NONE"         "gui=italic"
exe "hi! htmlEndTag"         "guifg=".s:cyan       "guibg=NONE"         "gui=NONE"
exe "hi! htmlH1"             "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! htmlH2"             "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! htmlH3"             "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! htmlH4"             "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! htmlH5"             "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! htmlH6"             "guifg=".s:orange     "guibg=NONE"         "gui=bold"

" CSS (expandido)
exe "hi! cssAttrComma"       "guifg=".s:base1      "guibg=NONE"         "gui=NONE"
exe "hi! cssAttributeSelector" "guifg=".s:green    "guibg=NONE"         "gui=italic"
exe "hi! cssBraces"          "guifg=".s:base1      "guibg=NONE"         "gui=NONE"
exe "hi! cssClassName"       "guifg=".s:orange     "guibg=NONE"         "gui=italic"
exe "hi! cssClassNameDot"    "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! cssInclude"         "guifg=".s:magenta    "guibg=NONE"         "gui=bold"
exe "hi! cssColor"           "guifg=".s:cyan       "guibg=NONE"         "gui=NONE"
exe "hi! cssMediaType"       "guifg=".s:violet     "guibg=NONE"         "gui=italic"
exe "hi! cssPseudoClassId"   "guifg=".s:yellow     "guibg=NONE"         "gui=italic"
exe "hi! cssSelectorOp"      "guifg=".s:base1      "guibg=NONE"         "gui=bold"
exe "hi! cssTagName"         "guifg=".s:blue       "guibg=NONE"         "gui=bold"
exe "hi! cssValueLength"     "guifg=".s:orange     "guibg=NONE"         "gui=NONE"
exe "hi! cssValueNumber"     "guifg=".s:orange     "guibg=NONE"         "gui=NONE"
exe "hi! cssVendor"          "guifg=".s:base1      "guibg=NONE"         "gui=italic"
exe "hi! cssNoise"           "guifg=".s:base00     "guibg=NONE"         "gui=NONE"

" Bash (expandido)
exe "hi! shShebang"       "guifg=".s:base1      "guibg=NONE"         "gui=bold"
exe "hi! shVarAssign"       "guifg=".s:orange_light      "guibg=NONE"         "gui=bold"
exe "hi! shDerefSimple"       "guifg=".s:blue      "guibg=NONE"         "gui=bold"
exe "hi! shCmdSubRegion"    "guifg=".s:yellow     "guibg=NONE"         "gui=bold"
exe "hi! shStatement"      "guifg=".s:magenta    "guibg=NONE"         "gui=bold"
exe "hi! shLoop"           "guifg=".s:green      "guibg=NONE"         "gui=bold"
exe "hi! shConditional"    "guifg=".s:green      "guibg=NONE"         "gui=bold"
exe "hi! shFunction"       "guifg=".s:violet     "guibg=NONE"         "gui=bold"
exe "hi! shBuiltin"        "guifg=".s:blue       "guibg=NONE"         "gui=NONE"
exe "hi! shSpecialVariables" "guifg=".s:red      "guibg=NONE"         "gui=italic"
exe "hi! shOption"         "guifg=".s:yellow     "guibg=NONE"         "gui=italic"
exe "hi! shKeyword"        "guifg=".s:magenta    "guibg=NONE"         "gui=bold"
exe "hi! shAdminStatement" "guifg=".s:red        "guibg=NONE"         "gui=bold"
exe "hi! shQuote"          "guifg=".s:cyan       "guibg=NONE"         "gui=NONE"
exe "hi! shSubst"          "guifg=".s:orange     "guibg=NONE"         "gui=italic"
exe "hi! shShellVariables" "guifg=".s:red        "guibg=NONE"         "gui=italic"

" TypeScript (agregado nuevo)
exe "hi! typescriptBraces"     "guifg=".s:base1      "guibg=NONE"         "gui=NONE"
exe "hi! typescriptEndColons"  "guifg=".s:base1      "guibg=NONE"         "gui=NONE"
exe "hi! typescriptParens"     "guifg=".s:base1      "guibg=NONE"         "gui=NONE"
exe "hi! typescriptDecorators" "guifg=".s:magenta    "guibg=NONE"         "gui=italic"
exe "hi! typescriptClassName"  "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! typescriptClassHeritage" "guifg=".s:orange  "guibg=NONE"         "gui=italic"
exe "hi! typescriptInterfaceName" "guifg=".s:yellow  "guibg=NONE"         "gui=bold"
exe "hi! typescriptEnum"       "guifg=".s:yellow     "guibg=NONE"         "gui=bold"
exe "hi! typescriptType"       "guifg=".s:blue       "guibg=NONE"         "gui=bold"
exe "hi! typescriptNull"       "guifg=".s:orange     "guibg=NONE"         "gui=bold"
exe "hi! typescriptExport"     "guifg=".s:violet     "guibg=NONE"         "gui=bold"
exe "hi! typescriptImport"     "guifg=".s:violet     "guibg=NONE"         "gui=bold"
exe "hi! typescriptArrowFunc"  "guifg=".s:magenta    "guibg=NONE"         "gui=bold"

" C y C++
exe "hi! cFunction"          "guifg=".s:violet      "guibg=NONE"         "gui=bold"
exe "hi! cType"              "guifg=".s:yellow      "guibg=NONE"         "gui=bold"
exe "hi! cStructure"         "guifg=".s:orange      "guibg=NONE"         "gui=bold"
exe "hi! cOperator"          "guifg=".s:base1       "guibg=NONE"         "gui=NONE"
exe "hi! cString"            "guifg=".s:green       "guibg=NONE"         "gui=NONE"

" Rust
exe "hi! rustFunction"       "guifg=".s:violet      "guibg=NONE"         "gui=bold"
exe "hi! rustStruct"         "guifg=".s:orange      "guibg=NONE"         "gui=bold"
exe "hi! rustEnum"           "guifg=".s:blue        "guibg=NONE"         "gui=bold"
exe "hi! rustMacro"          "guifg=".s:yellow      "guibg=NONE"         "gui=italic"
exe "hi! rustKeyword"        "guifg=".s:magenta     "guibg=NONE"         "gui=bold"
exe "hi! rustString"         "guifg=".s:cyan        "guibg=NONE"         "gui=NONE"

" Common Elements
exe "hi! Operator"           "guifg=".s:base1       "guibg=NONE"         "gui=NONE"
exe "hi! Delimiter"          "guifg=".s:base0       "guibg=NONE"         "gui=bold"
exe "hi! Identifier"         "guifg=".s:red      "guibg=NONE"         "gui=NONE"
exe "hi! Constant"           "guifg=".s:green       "guibg=NONE"         "gui=NONE"
exe "hi! Comment"            "guifg=".s:base00      "guibg=NONE"         "gui=italic"


" ---------------------------------
" Diff highlighting
exe "hi! DiffAdd"        "guifg=".s:green      "guibg=".s:base02     "gui=NONE"
exe "hi! DiffChange"     "guifg=".s:yellow     "guibg=".s:base02     "gui=NONE"
exe "hi! DiffDelete"     "guifg=".s:red        "guibg=".s:base02     "gui=NONE"
exe "hi! DiffText"       "guifg=".s:blue       "guibg=".s:base02     "gui=NONE"

" Git Gutter and Signify
exe "hi! SignColumn"       "guifg=".s:base00     "guibg=".s:base03     "gui=NONE"
exe "hi! GitGutterAdd"     "guifg=".s:green      "guibg=".s:base02     "gui=NONE"
exe "hi! GitGutterChange"  "guifg=".s:yellow     "guibg=".s:base02     "gui=NONE"
exe "hi! GitGutterDelete"  "guifg=".s:red        "guibg=".s:base02     "gui=NONE"
exe "hi! GitGutterChangeDelete" "guifg=".s:orange "guibg=".s:base02    "gui=NONE"

" vim-signature marks
exe "hi! SignatureMarkText"     "guifg=".s:orange     "guibg=".s:base03     "gui=NONE"
exe "hi! SignatureMarkerText"   "guifg=".s:violet_light "guibg=".s:base03     "gui=NONE"

" ALE (dense-analysis/ale)
exe "hi! ALEError"          "guifg=".s:red        "guibg=NONE"          "gui=underline"
exe "hi! ALEWarning"        "guifg=".s:yellow     "guibg=NONE"          "gui=underline"
exe "hi! ALEInfo"           "guifg=".s:blue       "guibg=NONE"          "gui=underline"
exe "hi! ALEErrorSign"      "guifg=".s:red        "guibg=NONE"          "gui=bold"
exe "hi! ALEWarningSign"    "guifg=".s:yellow     "guibg=".s:base02     "gui=bold"
exe "hi! ALEInfoSign"       "guifg=".s:blue       "guibg=".s:base02     "gui=bold"

" NERDTree
exe "hi! NERDTreeDir"        "guifg=".s:blue       "guibg=NONE"          "gui=NONE"
exe "hi! NERDTreeDirSlash"   "guifg=".s:magenta    "guibg=NONE"          "gui=NONE"
exe "hi! NERDTreeFile"       "guifg=".s:base2      "guibg=NONE"          "gui=NONE"
exe "hi! NERDTreeExecFile"   "guifg=".s:green      "guibg=NONE"          "gui=NONE"
exe "hi! NERDTreeCWD"        "guifg=".s:orange     "guibg=NONE"          "gui=NONE"
exe "hi! NERDTreeUp"         "guifg=".s:base00     "guibg=NONE"          "gui=NONE"
exe "hi! NERDTreeHelp"       "guifg=".s:base0      "guibg=NONE"          "gui=NONE"
exe "hi! NERDTreeToggleOn"   "guifg=".s:green      "guibg=NONE"          "gui=NONE"
exe "hi! NERDTreeToggleOff"  "guifg=".s:red        "guibg=NONE"          "gui=NONE"

" FZF Colors
let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment']
    \ }


" Codeium
exe "hi! CodeiumSuggestion" "guifg=".s:base00    "guibg=NONE"          "gui=italic"

" Terminal colors
let g:terminal_ansi_colors = [
    \ s:base02,
    \ s:red,
    \ s:green,
    \ s:yellow,
    \ s:blue,
    \ s:magenta,
    \ s:cyan,
    \ s:base2,
    \ s:base03,
    \ s:orange,
    \ s:green_light,
    \ s:yellow_light,
    \ s:blue_light,
    \ s:magenta_light,
    \ s:cyan_light,
    \ s:white
    \ ]

