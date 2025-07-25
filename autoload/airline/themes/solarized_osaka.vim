" Author: Enhanced version
" License: MIT
" Version: 2.2.0
"
let s:palette = {}

if &background == 'light'
    let s:base03 = '#FDF6E3'
    let s:base02 = '#EEE8D5'
    let s:base01 = '#93A1A1'
    let s:base00 = '#839496'
    let s:base1  = '#657B83'
    let s:base2  = '#586E75'
    let s:base3  = '#002B36'
    let s:base4  = '#001B24'
else
    let s:base03 = '#00212B'
    let s:base02 = '#003542'
    let s:base01 = '#094959'
    let s:base00 = '#586E75'
    let s:base1  = '#A8B5B6'
    let s:base2  = '#C2CED0'
    let s:base3  = '#EEE8D5'
    let s:base4  = '#FDF6E3'
endif
let s:white  = '#FFFFFF'


let s:yellow  = '#FABD2F'  " Amarillo más cálido
let s:orange  = '#FE8019'  " Naranja más brillante
let s:red     = '#FB4934'  " Rojo más intenso
let s:magenta = '#D3869B'  " Magenta más suave
let s:violet  = '#B16286'  " Violeta más elegante
let s:blue    = '#83A598'  " Azul más sofisticado
let s:cyan    = '#8EC07C'  " Cian más fresco
let s:green   = '#B8BB26'  " Verde más vibrante

" Función para convertir colores RGB a terminal
function! s:rgb2term(color) abort
    return a:color[0] == '#' ? 16 + (('0x' . strpart(a:color, 1, 2)) + 0) / 51 * 36
                            \+ (('0x' . strpart(a:color, 3, 2)) + 0) / 51 * 6
                            \+ (('0x' . strpart(a:color, 5, 2)) + 0) / 51
                            \: a:color
endfunction

" Crear colores con mejor contraste
function! s:create_colors(fg, bg) abort
    return [a:fg, a:bg, s:rgb2term(a:fg), s:rgb2term(a:bg)]
endfunction

" Definiciones de colores por modo
let s:N1 = s:create_colors(s:base4, s:blue)      " Normal mode
let s:N2 = s:create_colors(s:white, s:base01)
let s:N3 = s:create_colors(s:base2, s:base03)

let s:I1 = s:create_colors(s:base4, s:green)     " Insert mode
let s:I2 = s:create_colors(s:white, s:base01)
let s:I3 = s:create_colors(s:base2, s:base03)

let s:V1 = s:create_colors(s:base4, s:magenta)   " Visual mode
let s:V2 = s:create_colors(s:white, s:base01)
let s:V3 = s:create_colors(s:base2, s:base03)

let s:R1 = s:create_colors(s:base4, s:red)       " Replace mode
let s:R2 = s:create_colors(s:white, s:base01)
let s:R3 = s:create_colors(s:base2, s:base03)

let s:C1 = s:create_colors(s:base4, s:cyan)      " Command mode
let s:C2 = s:create_colors(s:white, s:base01)
let s:C3 = s:create_colors(s:base2, s:base03)

let s:T1 = s:create_colors(s:base4, s:violet)    " Terminal mode
let s:T2 = s:create_colors(s:white, s:base01)
let s:T3 = s:create_colors(s:base2, s:base03)

" Inicializar tema
let g:airline#themes#solarized_osaka#palette = {}


let g:airline#themes#solarized_osaka#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#solarized_osaka#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#solarized_osaka#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#solarized_osaka#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#solarized_osaka#palette.command = airline#themes#generate_color_map(s:C1, s:C2, s:C3)
let g:airline#themes#solarized_osaka#palette.terminal = airline#themes#generate_color_map(s:T1, s:T2, s:T3)

" Colores para split y statusline"
highlight VertSplit guifg=#094959 guibg=#00212B gui=NONE
highlight StatusLine guifg=#C2CED0 guibg=#00212B gui=NONE
highlight StatusLineNC guifg=#586E75 guibg=#00212B gui=NONE

" Modo inactivo con mayor contraste
let s:IA = [s:base00, s:base03, s:rgb2term(s:base00), s:rgb2term(s:base03), '']
let g:airline#themes#solarized_osaka#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Advertencias y errores
let s:warning = s:create_colors(s:base4, s:yellow)
let s:error = s:create_colors(s:base4, s:red)

for mode in ['normal', 'insert', 'visual', 'replace', 'command', 'terminal']
    let g:airline#themes#solarized_osaka#palette[mode].airline_warning = s:warning
    let g:airline#themes#solarized_osaka#palette[mode].airline_error = s:error
endfor

" Indicador de archivo modificado
let s:modified = { 'airline_c': s:create_colors(s:orange, s:base03) }
for mode in ['normal', 'insert', 'visual', 'replace', 'command', 'terminal']
    let g:airline#themes#solarized_osaka#palette[mode . '_modified'] = s:modified
endfor

" Iconos más elegantes para GitGutter (requiere Nerd Fonts)
let g:gitgutter_sign_added = ' '              " Icono de añadido
let g:gitgutter_sign_modified = ' '          " Icono de modificado
let g:gitgutter_sign_removed = ' '           " Icono de eliminado
let g:gitgutter_sign_removed_first_line = ' ' " Icono de eliminado en primera línea
let g:gitgutter_sign_modified_removed = ' '  " Icono de modificado/eliminado

" Colores optimizados para GitGutter
highlight! GitGutterAdd    guifg=#B8BB26 guibg=#00212B gui=NONE ctermfg=142
highlight! GitGutterChange guifg=#FABD2F guibg=#00212B gui=NONE ctermfg=214
highlight! GitGutterDelete guifg=#FB4934 guibg=#00212B gui=NONE ctermfg=203

" Función optimizada para Git Status
let s:git_status_cache = {}
function! GitStatus() abort
    let l:bufnr = bufnr('%')
    if has_key(s:git_status_cache, l:bufnr) && reltimefloat(reltime()) - s:git_status_cache[l:bufnr].time < 0.5
        return s:git_status_cache[l:bufnr].status
    endif
    if !exists('*GitGutterGetHunkSummary') || empty(finddir('.git', '.;'))
        return ''
    endif
    let [a,m,r] = GitGutterGetHunkSummary()
    let l:status = (a + m + r) == 0 ? '' : printf(' %d  %d  %d', a, m, r)
    let s:git_status_cache[l:bufnr] = {'status': l:status, 'time': reltimefloat(reltime())}
    return l:status
endfunction

" Optimizaciones de rendimiento
let g:gitgutter_enabled = 1
let g:gitgutter_max_signs = 500
let g:gitgutter_async = 1
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_cache_enabled = 1
let g:gitgutter_cache_time = 500

" Configuración de Airline
let g:airline_section_b = '%{GitStatus()}'

" Integración con ALE
function! ALEStatus() abort
    if !exists('g:loaded_ale')
        return ''
    endif
    let l:errors = ale#statusline#Count(0)['error']
    let l:warnings = ale#statusline#Count(0)['warning']
    return (l:errors + l:warnings) == 0 ? '' : printf(' %d | ✗ %d', l:warnings, l:errors)
endfunction
let g:airline_section_warning = '%{ALEStatus()}'

" Integración con Coc
function! CocStatus() abort
    if !exists('g:coc_status')
        return ''
    endif
    return get(g:, 'coc_status', '')
endfunction
let g:airline_section_x = '%{CocStatus()}'

" Tabline mejorada
let s:TAB_ACTIVE = s:create_colors(s:base4, s:blue)
let s:TAB_INACTIVE = s:create_colors(s:base2, s:base02)
let g:airline#themes#solarized_osaka#palette.tabline = {}
let g:airline#themes#solarized_osaka#palette.tabline.airline_tab = s:TAB_ACTIVE
let g:airline#themes#solarized_osaka#palette.tabline.airline_tabsel = s:TAB_ACTIVE
let g:airline#themes#solarized_osaka#palette.tabline.airline_tabtype = s:TAB_INACTIVE
let g:airline#themes#solarized_osaka#palette.tabline.airline_tabfill = s:create_colors(s:base00, s:base03)
