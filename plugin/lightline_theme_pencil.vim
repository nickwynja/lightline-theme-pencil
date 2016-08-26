" Location:   plugin/lightline_theme_pencil.vim
" Maintainer: Mikkel Malmberg <http://mikker.sexy/>
" Version:    0.1

let s:blue = '#008AD5'
let s:green = '#15B09D'
let s:pink = '#D6367F'
let s:olive = '#EBBF7E'
let s:red = '#BB5654'

let s:foreground = '#767676'
let s:background = '#E5E6E6'
let s:status = s:background
let s:error = s:red

" Tabline:
let s:tabline_bg = s:background
let s:tabline_active_fg = s:background
let s:tabline_active_bg = s:blue
let s:tabline_inactive_fg = s:foreground
let s:tabline_inactive_bg = s:background

" Statusline:
let s:statusline_active_fg = s:foreground
let s:statusline_active_bg = s:background
let s:statusline_inactive_fg = s:foreground
let s:statusline_inactive_bg = s:background

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [[s:foreground, s:background], [s:statusline_active_fg, s:status], [s:statusline_active_fg, s:statusline_active_bg]]
let s:p.normal.right = [[s:foreground, s:background], [s:statusline_active_fg, s:status], [s:statusline_active_fg, s:statusline_active_bg]]
let s:p.normal.middle = [[s:statusline_active_fg, s:statusline_active_bg]]
let s:p.inactive.right = [[s:foreground, s:background], [s:foreground, s:background]]
let s:p.inactive.left = [[s:foreground, s:background], [s:foreground, s:background]]
let s:p.inactive.middle = [[s:foreground, s:background]]
let s:p.insert.left = [[s:blue, s:background], [s:statusline_active_fg, s:status], [s:statusline_active_fg, s:statusline_active_bg]]
let s:p.replace.left = [[s:background, s:red], [s:statusline_active_fg, s:status], [s:statusline_active_fg, s:statusline_active_bg]]
let s:p.visual.left = [[s:background, s:pink], [s:statusline_active_fg, s:status], [s:statusline_active_fg, s:statusline_active_bg]]
let s:p.tabline.left = [[s:tabline_inactive_fg, s:tabline_inactive_bg]]
let s:p.tabline.tabsel = [[s:tabline_active_fg, s:tabline_active_bg]]
let s:p.tabline.middle = [[s:tabline_bg, s:tabline_bg]]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [[s:background, s:error]]
let s:p.normal.warning = [[s:background, s:olive]]

let g:lightline#colorscheme#pencil#palette = lightline#colorscheme#fill(s:p)
