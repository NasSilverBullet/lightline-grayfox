" Name: Grayfox
" Author:  NasSilverBullet
" License: MIT License

let s:red    = 9
let s:orange = 3

let s:none = 'NONE'
let s:gray = 237
let s:fox = 251

let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

let s:style = exists('g:grayfox_is_transparent')
			\ ? g:lightline_grayfox_style
			\ : ''

if existsexists('g:grayfox_is_transparent')
  s:gray = s:none
endif

" [[guifg, guibg, ctermfg, ctermbg], ...]
let s:p.normal.middle = [
      \ [s:none, s:none, s:fox, s:gray]]
let s:p.normal.left = [
      \ [s:none, s:none, s:gray, s:fox],
      \ [s:none, s:none, s:gray, s:fox]]
let s:p.normal.right = [
      \ [s:none, s:none, s:gray, s:fox],
      \ [s:none, s:none, s:gray, s:fox]]

let s:p.normal.error = [
			\ [s:none, s:none, s:gray, s:red]]
let s:p.normal.warning = [
			\ [s:none, s:none, s:gray, s:orange]]

let s:p.inactive.middle = [
			\ [s:none, s:none, s:fox, s:gray]]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let s:p.insert.left = [
			\ [s:none, s:none, s:gray, s:fox],
			\ s:p.normal.left[1]]
let s:p.replace.left = [
			\ [s:none, s:none, s:gray, s:fox],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:none, s:none, s:gray, s:fox],
			\ s:p.normal.left[1]]

let s:p.tabline.middle = [
      \ [s:none, s:none, s:gray, s:fox]]
let s:p.tabline.right = [
      \ [s:none, s:none, s:gray, s:fox]]
let s:p.tabline.left = [
      \ [s:none, s:none, s:gray, s:fox]]
let s:p.tabline.tabsel = [
      \ [s:none, s:none, s:fox, s:gray]]

let g:lightline#colorscheme#grayfox#palette = s:p
