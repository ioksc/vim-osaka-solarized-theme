" Vim color file
" Maintainer: ioksc (based on color schema by gh:craftzdog/solarized-osaka.nvim)
" Last Change: 2025

set background=dark
highlight clear

if exists("syntax_on")
    syntax reset
endif

if has('termguicolors')
    set termguicolors
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

" Mapeo de colores para terminal (cterm)
function! s:get_cterm_color(hex)
    let l:colors = {
        \ s:base03: '0',
        \ s:base02: '8',
        \ s:base01: '10',
        \ s:base00: '11',
        \ s:base0:  '12',
        \ s:base1:  '14',
        \ s:base2:  '7',
        \ s:base3:  '15',
        \ s:yellow: '3',
        \ s:orange: '9',
        \ s:red:    '1',
        \ s:magenta:'5',
        \ s:violet: '13',
        \ s:blue:   '4',
        \ s:cyan:   '6',
        \ s:green:  '2',
        \ s:white:  '15'
    \ }
    return get(l:colors, a:hex, 'NONE')
endfunction

" Helper function for highlight groups
function! s:hi(group, fg, bg, attr)
    let l:attr = a:attr == '' ? '' : 'gui='.a:attr.' cterm='.a:attr
    let l:fg = a:fg == '' ? '' : 'guifg='.a:fg.' ctermfg='.s:get_cterm_color(a:fg)
    let l:bg = a:bg == '' ? '' : 'guibg='.a:bg.' ctermbg='.s:get_cterm_color(a:bg)
    execute 'hi! ' . a:group . ' ' . l:fg . ' ' . l:bg . ' ' . l:attr
endfunction

" Basic UI Elements
call s:hi('Normal',          s:base1, s:base03,  '')
call s:hi('EndOfBuffer',     s:base03, s:base03, '')
call s:hi('CursorLine',      '',       s:base01, 'NONE') " Sin subrayado
call s:hi('CursorColumn',    '',       s:base01, '')
call s:hi('CursorLineNr',    s:red,    '',       'NONE')
call s:hi('LineNr',          s:yellow, '',       '')
call s:hi('Visual',          '',       s:base3,  '')
call s:hi('Search',          s:base03, s:yellow, '')
call s:hi('IncSearch',       s:base03, s:orange, '')
call s:hi('StatusLine',      s:base2,  s:base01, '')
call s:hi('StatusLineNC',    s:base00, s:base02, '')
call s:hi('VertSplit',       s:base01, s:base01, '')
call s:hi('Folded',          s:base0,  s:base02, 'bold')
call s:hi('FoldColumn',      s:base0,  s:base02, '')
call s:hi('Pmenu',           s:base2,  s:base02, '')
call s:hi('PmenuSel',        s:base03, s:blue,   '')
call s:hi('PmenuSbar',       s:base02, s:base02, '')
call s:hi('PmenuThumb',      s:base0,  s:base0,  '')
call s:hi('TabLine',         s:base0,  s:base02, '')
call s:hi('TabLineFill',     s:base0,  s:base02, '')
call s:hi('TabLineSel',      s:base2,  s:base01, '')

" Syntax Elements
call s:hi('Comment',         s:base00, '',       'italic')
call s:hi('Todo',            s:base02, s:blue_light, 'bold')
call s:hi('Constant',        s:green,  '',       '')
call s:hi('String',          s:cyan,   '',       '')
call s:hi('Character',       s:green,  '',       '')
call s:hi('Identifier',      s:blue,   '',       '')
call s:hi('Statement',       s:orange, '',       '')
call s:hi('PreProc',         s:magenta,'',       '')
call s:hi('Type',            s:yellow, '',       '')
call s:hi('Special',         s:violet, '',       '')
call s:hi('Error',           s:red,    '',       'bold')
call s:hi('MatchParen',      s:base03, s:blue,   'bold')
call s:hi('Operator',        s:base1,  '',       '')
call s:hi('Delimiter',       s:base0,  '',       'bold')

" Common Elements
call s:hi('Number',          s:green,  '',       '')
call s:hi('Boolean',         s:green,  '',       '')
call s:hi('Function',        s:violet, '',       'bold')

" Language-specific enhancements
let s:lang = {
    \ 'js': [
        \ ['jsGlobalObjects',    s:blue,    '', 'bold'],
        \ ['jsThis',             s:magenta, '', 'italic'],
        \ ['jsArrowFunction',    s:magenta, '', 'bold']
    \ ],
    \ 'python': [
        \ ['pythonRepeat',       s:green,   '', 'bold'],
        \ ['pythonAsync',        s:magenta, '', 'italic']
    \ ],
    \ 'typescript': [
        \ ['typescriptDecorators', s:magenta, '', 'italic'],
        \ ['typescriptType',      s:blue,    '', 'bold']
    \ ]
\ }

for lang in keys(s:lang)
    for group in s:lang[lang]
        call call('s:hi', group)
    endfor
endfor

" Plugin Configurations
call s:hi('DiffAdd',         s:green,  s:base02, '')
call s:hi('DiffChange',      s:yellow, s:base02, '')
call s:hi('DiffDelete',      s:red,    s:base02, '')
call s:hi('DiffText',        s:blue,   s:base02, '')
call s:hi('SignColumn',      '',       s:base03, '')
call s:hi('ALEErrorSign',    s:red,    s:base02, 'bold')
call s:hi('ALEWarningSign',  s:yellow, s:base02, 'bold')

call s:hi('NERDTreeDir',     s:blue,   '',       '')
call s:hi('NERDTreeExecFile',s:green,  '',       '')

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

" Cleanup
delfunction s:hi
delfunction s:get_cterm_color
unlet s:base03 s:base02 s:base01 s:base00 s:base0
unlet s:base1 s:base2 s:base3 s:base4 s:white
unlet s:yellow s:orange s:red s:magenta s:violet
unlet s:blue s:cyan s:green s:yellow_light s:orange_light
unlet s:red_light s:magenta_light s:violet_light s:blue_light
unlet s:cyan_light s:green_light
