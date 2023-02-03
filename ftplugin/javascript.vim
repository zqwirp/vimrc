" By default, all available tools for all supported languages will be run. If
" you want to only select a subset of the tools, you can define b:ale_linters
" for a single buffer, or g:ale_linters globally.
"
let b:ale_fixers = {
			\'javascript': ['prettier', 'eslint']
			\}


"" vim: ts=2 sts=2 sw=2 et
