" Vim color file
" Maintainer: ioksc (based on color schema by gh:craftzdog/solarized-osaka.nvim)
" Last Change: 2025
" Description: A dark theme inspired by Solarized Osaka with enhanced plugin support, readability.

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

" Light Variants
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
        \ s:base03: '0',  s:base02: '8',  s:base01: '10', s:base00: '11',
        \ s:base0: '12',  s:base1: '14',  s:base2: '7',   s:base3: '15',
        \ s:yellow: '3',  s:orange: '9',  s:red: '1',     s:magenta: '5',
        \ s:violet: '13', s:blue: '4',   s:cyan: '6',    s:green: '2',
        \ s:white: '15',  s:yellow_light: '11', s:orange_light: '9',
        \ s:red_light: '9', s:magenta_light: '13', s:violet_light: '13',
        \ s:blue_light: '12', s:cyan_light: '14', s:green_light: '10'
    \ }
    return get(l:colors, a:hex, 'NONE')
endfunction

" Helper function for highlight groups
function! s:hi(group, fg, bg, attr)
    let l:cmd = 'hi! ' . a:group
    if a:fg != ''
        let l:cmd .= ' guifg=' . a:fg . ' ctermfg=' . s:get_cterm_color(a:fg)
    endif
    if a:bg != ''
        let l:cmd .= ' guibg=' . a:bg . ' ctermbg=' . s:get_cterm_color(a:bg)
    endif
    if a:attr != ''
        let l:cmd .= ' gui=' . a:attr . ' cterm=' . a:attr
    endif
    execute l:cmd
endfunction

" Basic UI Elements
call s:hi('Normal',          s:base1,  s:base03, '')          " Texto normal
call s:hi('EndOfBuffer',     s:base03, s:base03, '')          " Final del buffer
call s:hi('CursorLine',      '',       s:base01, 'NONE')      " Línea del cursor
call s:hi('CursorColumn',    '',       s:base01, '')          " Columna del cursor
call s:hi('CursorLineNr',    s:red,    '',       'NONE')      " Número de línea actual
call s:hi('LineNr',          s:yellow, '',       '')          " Números de línea
call s:hi('Visual',          s:base01, s:base3,  '')          " Modo visual
call s:hi('Search',          s:base03, s:yellow, '')          " Resultados de búsqueda
call s:hi('IncSearch',       s:base03, s:orange, '')          " Búsqueda incremental
call s:hi('StatusLine',      s:base2,  s:base01, '')          " Línea de estado activa
call s:hi('StatusLineNC',    s:base00, s:base02, '')          " Línea de estado no activa
call s:hi('VertSplit',       s:base01, s:base01, '')          " Separador vertical
call s:hi('Folded',          s:base0,  s:base02, 'bold')      " Líneas plegadas
call s:hi('FoldColumn',      s:base0,  s:base02, '')          " Columna de plegado
call s:hi('Pmenu',           s:base2,  s:base02, '')          " Menú emergente
call s:hi('PmenuSel',        s:base03, s:blue,   '')          " Selección en menú emergente
call s:hi('PmenuSbar',       s:base02, s:base02, '')          " Barra de desplazamiento
call s:hi('PmenuThumb',      s:base0,  s:base0,  '')          " Thumb de la barra
call s:hi('TabLine',         s:base0,  s:base02, '')          " Línea de pestañas
call s:hi('TabLineFill',     s:base0,  s:base02, '')          " Relleno de pestañas
call s:hi('TabLineSel',      s:base2,  s:base01, '')          " Pestaña seleccionada

" Syntax Elements
call s:hi('Comment',         s:base0,  '',       'italic')    " Comentarios
call s:hi('Todo',            s:base4,  s:blue, 'bold,underline')  " TODO
call s:hi('Fixme',           s:base4,  s:yellow, 'bold,underline')  " FIXME
call s:hi('Note',            s:base4,  s:orange, 'bold,underline')  " NOTE
call s:hi('Bug',             s:base4,  s:red_light, 'bold,underline')     " BUG
call s:hi('Hack',            s:base4,  s:magenta_light, 'bold,underline') " HACK
call s:hi('Shebang',         s:base4,  s:red_light, 'bold')          " Shebang (#!)
call s:hi('Constant',        s:green,  '',       '')          " Constantes
call s:hi('String',          s:cyan,   '',       '')          " Cadenas de texto
call s:hi('Character',       s:green,  '',       '')          " Caracteres
call s:hi('Identifier',      s:blue,   '',       '')          " Identificadores
call s:hi('Statement',       s:orange, '',       '')          " Declaraciones
call s:hi('PreProc',         s:magenta,'',       '')          " Preprocesador
call s:hi('Type',            s:yellow, '',       '')          " Tipos
call s:hi('Special',         s:violet, '',       '')          " Especiales
call s:hi('Error',           s:red,    '',       'bold')      " Errores
call s:hi('MatchParen',      s:base03, s:blue,   'bold')      " Paréntesis coincidentes
call s:hi('Operator',        s:base1,  '',       '')          " Operadores
call s:hi('Delimiter',       s:base0,  '',       'bold')      " Delimitadores

" Common Elements
call s:hi('Number',          s:green_light, '',  '')          " Números
call s:hi('Boolean',         s:green_light, '',  '')          " Booleanos
call s:hi('Function',        s:violet, '',       'bold')      " Funciones

" Language-specific enhancements
let s:lang = {}
let s:lang['bash'] = [
    \ ['shStatement',      s:orange,  '', 'bold'],
    \ ['shLoop',           s:green,   '', 'bold'],
    \ ['shFunction',       s:violet,  '', 'bold'],
    \ ['shVariable',       s:blue,    '', ''],
    \ ['shTest',           s:cyan,    '', 'italic'],
    \ ['shString',         s:cyan,    '', ''],
    \ ['shNumber',         s:green,   '', ''],
    \ ['shComment',        s:base0,   '', 'italic'],
    \ ['shOperator',       s:base1,   '', ''],
    \ ['shCmdSub',         s:magenta, '', 'italic']
    \ ]
let s:lang['python'] = [
    \ ['pythonRepeat',       s:green,   '', 'bold'],
    \ ['pythonAsync',        s:magenta, '', 'italic'],
    \ ['pythonStatement',    s:orange,  '', 'bold'],
    \ ['pythonFunction',     s:violet,  '', 'bold'],
    \ ['pythonBuiltin',      s:blue,    '', ''],
    \ ['pythonDecorator',    s:magenta, '', 'italic'],
    \ ['pythonString',       s:cyan,    '', ''],
    \ ['pythonNumber',       s:green,   '', ''],
    \ ['pythonOperator',     s:base1,   '', ''],
    \ ['pythonExceptions',   s:red,     '', 'bold'],
    \ ['pythonKeyword',      s:yellow,  '', '']
    \ ]
let s:lang['js'] = [
    \ ['jsGlobalObjects',    s:blue,    '', 'bold'],
    \ ['jsThis',             s:magenta, '', 'italic'],
    \ ['jsArrowFunction',    s:magenta, '', 'bold']
    \ ]
let s:lang['typescript'] = [
    \ ['typescriptDecorators', s:magenta, '', 'italic'],
    \ ['typescriptType',      s:blue,    '', 'bold']
    \ ]
let s:lang['go'] = [
    \ ['goFunction',         s:violet,  '', 'bold'],
    \ ['goStatement',        s:orange,  '', 'bold'],
    \ ['goFormatSpecifier',  s:red_light,   '', 'bold'],
    \ ['goSimpleParams', s:yellow,    '', ''],
    \ ['goType',             s:yellow,  '', ''],
    \ ['goBuiltins',         s:blue,    '', ''],
    \ ['goString',           s:cyan,    '', ''],
    \ ['goNumber',           s:green,   '', ''],
    \ ['goOperator',         s:magenta_light,   '', ''],
    \ ['goComment',          s:base0,   '', 'italic'],
    \ ['goPackage',          s:magenta, '', 'italic'],
    \ ['goConstant',         s:green,   '', ''],
    \ ['goDeclaration',      s:orange,  '', 'bold']
    \ ]

for lang in keys(s:lang)
    for group in s:lang[lang]
        call call('s:hi', group)
    endfor
endfor

" Vincular marcadores específicos a grupos de resaltado
autocmd Syntax * call matchadd('Todo', '\<TODO\>')
autocmd Syntax * call matchadd('Fixme', '\<FIXME\>')
autocmd Syntax * call matchadd('Note', '\<NOTE\>')
autocmd Syntax * call matchadd('Bug', '\<BUG\>')
autocmd Syntax * call matchadd('Hack', '\<HACK\>')
autocmd Syntax * call matchadd('Shebang', '^#!.*$')

" Plugin Configurations
call s:hi('DiffAdd',         s:green,  s:base02, '')          " Líneas añadidas
call s:hi('DiffChange',      s:yellow, s:base02, '')          " Líneas cambiadas
call s:hi('DiffDelete',      s:red,    s:base02, '')          " Líneas eliminadas
call s:hi('DiffText',        s:blue,   s:base02, '')          " Texto cambiado
call s:hi('SignColumn',      '',       s:base03, '')          " Columna de signos
call s:hi('ALEErrorSign',    s:red,    s:base02, 'bold')      " Signos de error de ALE
call s:hi('ALEWarningSign',  s:yellow, s:base02, 'bold')      " Signos de advertencia de ALE
call s:hi('NERDTreeDir',     s:blue,   '',       '')          " Directorios en NERDTree
call s:hi('NERDTreeExecFile',s:green,  '',       '')          " Archivos ejecutables en NERDTree
call s:hi('GitGutterAdd',    s:green,  s:base02, '')          " Añadidos en GitGutter
call s:hi('GitGutterChange', s:yellow, s:base02, '')          " Cambios en GitGutter
call s:hi('GitGutterDelete', s:red,    s:base02, '')          " Eliminados en GitGutter
call s:hi('GitGutterChangeDelete', s:orange, s:base02, '')    " Cambios y eliminados en GitGutter
call s:hi('TelescopeBorder', s:base0,  s:base02, '')          " Borde en Telescope
call s:hi('TelescopePromptPrefix', s:blue, s:base02, '')      " Prefijo del prompt en Telescope
call s:hi('TelescopeSelection', s:base03, s:blue, '')         " Selección en Telescope
call s:hi('TelescopeMatching', s:orange, '', '')              " Coincidencias en Telescope

" Additional Highlight Groups
call s:hi('Underlined',      s:blue,   '',       'underline') " Texto subrayado
call s:hi('Title',           s:orange, '',       'bold')      " Títulos
call s:hi('Directory',       s:blue,   '',       '')          " Directorios
call s:hi('SpecialKey',      s:base01,'',       '')          " Teclas especiales
call s:hi('NonText',         s:green_light, '',       '')          " Caracteres no textuales
call s:hi('Conceal',         s:base0,  s:base03, '')          " Texto oculto

" Terminal colors
let g:terminal_ansi_colors = [
    \ s:base02, s:red, s:green, s:yellow, s:blue, s:magenta, s:cyan, s:base2,
    \ s:base03, s:orange, s:green_light, s:yellow_light, s:blue_light,
    \ s:magenta_light, s:cyan_light, s:white
\ ]

" Cleanup
delfunction s:hi
delfunction s:get_cterm_color
unlet s:base03 s:base02 s:base01 s:base00 s:base0 s:base1 s:base2 s:base3 s:base4 s:white
unlet s:yellow s:orange s:red s:magenta s:violet s:blue s:cyan s:green
unlet s:yellow_light s:orange_light s:red_light s:magenta_light s:violet_light
unlet s:blue_light s:cyan_light s:green_light