" Author: Enhanced version
" License: MIT
" Version: 2.1.0
" Color Palette Definition
let s:palette = {}

let s:base03 = '#001B24'
let s:base02 = '#002B36'
let s:base01 = '#094959'
let s:base00 = '#586E75'
let s:base1  = '#9EACAD'
let s:base2  = '#B8C5C5'
let s:base3  = '#EEE8D5'
let s:base4  = '#FDF6E3'
let s:white  = '#FFFFFF'

let s:yellow  = '#B58900'
let s:orange  = '#CB4B16'
let s:red     = '#DC322F'
let s:magenta = '#D33682'
let s:violet  = '#6C71C4'
let s:blue    = '#268BD2'
let s:cyan    = '#2AA198'
let s:green   = '#859900'

function! s:rgb2term(color) abort
  return a:color[0] == '#' ? 16 + (('0x' . strpart(a:color, 1, 2)) + 0) / 51 * 36
                          \+ (('0x' . strpart(a:color, 3, 2)) + 0) / 51 * 6
                        \+ (('0x' . strpart(a:color, 5, 2)) + 0) / 51
                        \: a:color
endfunction

function! s:create_colors(fg, bg) abort
    return [a:fg, a:bg, s:rgb2term(a:fg), s:rgb2term(a:bg)]
endfunction

" Mode Color Definitions with Enhanced Contrast
let s:N1 = s:create_colors(s:base03, s:blue)     " Normal mode
let s:N2 = s:create_colors(s:blue, s:base01)    " Enhanced contrast
let s:N3 = s:create_colors(s:base2, s:base03)   " Better visibility

let s:I1 = s:create_colors(s:base4, s:green)    " Insert mode
let s:I2 = s:create_colors(s:green, s:base01)
let s:I3 = s:create_colors(s:base2, s:base03)

let s:V1 = s:create_colors(s:base4, s:magenta)  " Changed to magenta for better distinction
let s:V2 = s:create_colors(s:magenta, s:base01)
let s:V3 = s:create_colors(s:base2, s:base03)

let s:R1 = s:create_colors(s:base4, s:red)
let s:R2 = s:create_colors(s:red, s:base01)
let s:R3 = s:create_colors(s:base2, s:base03)

" Initialize Theme
let g:airline#themes#solarized_osaka#palette = {}

" Generate color maps
let g:airline#themes#solarized_osaka#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#solarized_osaka#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#solarized_osaka#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#solarized_osaka#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Enhanced Split Colors
highlight VertSplit guifg=#094959 guibg=NONE gui=NONE
highlight StatusLine guifg=#B8C5C5 guibg=#001B24 gui=NONE
highlight StatusLineNC guifg=#586E75 guibg=#001B24 gui=NONE

" Inactive mode with better contrast
let s:IA = [s:base00, s:base03, s:rgb2term(s:base00), s:rgb2term(s:base03), '']
let g:airline#themes#solarized_osaka#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Warning and Error states
let s:warning = s:create_colors(s:base03, s:yellow)
let s:error = s:create_colors(s:base4, s:red)

" Apply warnings and errors to all modes
for mode in ['normal', 'insert', 'visual', 'replace']
    let g:airline#themes#solarized_osaka#palette[mode].airline_warning = s:warning
    let g:airline#themes#solarized_osaka#palette[mode].airline_error = s:error
endfor

" Modified state indicator
let s:modified = { 'airline_c': s:create_colors(s:orange, s:base03) }  " Changed to orange for better visibility
for mode in ['normal', 'insert', 'visual', 'replace']
    let g:airline#themes#solarized_osaka#palette[mode . '_modified'] = s:modified
endfor

" Optimized GitGutter Integration
let g:gitgutter_sign_added = ' '
let g:gitgutter_sign_modified = ' '
let g:gitgutter_sign_removed = ' '
let g:gitgutter_sign_removed_first_line = ' '
let g:gitgutter_sign_modified_removed = ' '


" Enhanced GitGutter Colors
highlight! GitGutterAdd    guifg=#859900 guibg=NONE gui=NONE ctermfg=106
highlight! GitGutterChange guifg=#b58900 guibg=NONE gui=NONE ctermfg=136
highlight! GitGutterDelete guifg=#dc322f guibg=NONE gui=NONE ctermfg=160

" Optimized Git Status Function
function! GitStatus() abort
    if !exists('*GitGutterGetHunkSummary') || empty(finddir('.git', '.;'))
        return ''
    endif

    let [a,m,r] = GitGutterGetHunkSummary()
    return (a + m + r) == 0 ? '' : printf(' %d  %d  %d', a, m, r)
endfunction

" Performance Optimizations
let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 500
let g:gitgutter_async = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Cache Settings
let g:gitgutter_cache_enabled = 1
let g:gitgutter_cache_time = 1000

" Set Git Status in Airline
let g:airline_section_b = '%{GitStatus()}'

" Definición de colores para tabline
let s:TAB_ACTIVE = s:create_colors(s:base03, s:magenta)  " Buffer activo en magenta
let s:TAB_INACTIVE = s:create_colors(s:base2, s:base01)  " Buffers inactivos con colores originales

" Configurar la paleta de tabline
let g:airline#themes#solarized_osaka#palette.tabline = {}
let g:airline#themes#solarized_osaka#palette.tabline.airline_tab = s:TAB_ACTIVE
let g:airline#themes#solarized_osaka#palette.tabline.airline_tabsel = s:TAB_ACTIVE
let g:airline#themes#solarized_osaka#palette.tabline.airline_tabtype = s:TAB_INACTIVE
let g:airline#themes#solarized_osaka#palette.tabline.airline_tabfill = s:create_colors(s:base00, s:base03)

