""" vim: set sw=2 ts=2 sts=2 et tw=78 foldmarker={{,}} foldmethod=marker foldlevel=0 nofen:

" vimtex {{
  let g:vimtex_matchparen_enabled = 0
" }}

" vim-go {{
  let g:go_def_mapping_enabled = 0
" }}"

" vim-markdown {{
  let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'typescript']
" }}"

" vim-run {{
  let g:vim_run_command_map = {
        \'typescript': 'ts-node',
        \'javascript': 'node',
        \'python': 'python3',
        \'go': 'go run',
        \'swift': 'swift'
        \}
" }}

" echodoc {{
  let g:echodoc_enable_at_startup = 1
" }}

" plug.nvim {{
  let g:plug_rebase = 1
" }}

" vim-highlightedyank {{
  let g:highlightedyank_highlight_duration = 100
" }}

" numdo.vim {{
  let g:mundo_prefer_python3 = 1
" }}

" vim-jsx-improve {{
  let javascript_plugin_jsdoc = 1
  let javascript_plugin_flow = 1
" }}

" xml.vim {{
  let g:xml_syntax_folding = 1
" }}

" Netrw {{
  let g:netrw_chgwin = 2
  let g:netrw_banner=0
  let g:netrw_list_hide = ',\(^\|\s\s\)\zs\.\S\+'
  let g:netrw_winsize=20
  let g:netrw_liststyle=3
  let g:netrw_localrmdir='rmtrash'
  let g:netrw_bufsettings = "noma nomod nonu nobl nowrap ro nornu buftype=nofile"
" }}

" vim-gitgutter {{
  let g:gitgutter_max_signs = 999
" }}

" emmet {{
  " https://raw.github.com/mattn/emmet-vim/master/TUTORIAL
  " <A-y>a Make anchor from URL
  " <A-y>A Make quoted text from URL
  let g:user_emmet_leader_key = '<A-y>'
  let g:user_emmet_expandabbr_key = '<M-y>'
  "内部全选
  let g:user_emmet_mode='a'
  let g:emmet_html5 = 0
  let g:user_emmet_settings = {
        \ 'javascript': {
        \   'extends': 'html',
        \   'attribute_name': {'class': 'className', 'for': 'htmlFor'},
        \   'empty_element_suffix': ' />',
        \ },
        \ 'wxss': {
        \   'extends': 'css',
        \ },
        \ 'wxml': {
        \   'extends': 'html',
        \   'aliases': {
        \     'div': 'view',
        \     'span': 'text',
        \   },
        \   'default_attributes': {
        \     'block': [{'wx:if': '{{somevalue}}'}],
        \     'navigator': [{'url': '', 'redirect': 'false'}],
        \     'scroll-view': [{'bindscroll': ''}],
        \     'swiper': [{'autoplay': 'false', 'current': '0'}],
        \     'icon': [{'type': 'success', 'size': '23'}],
        \     'progress': [{'precent': '0'}],
        \     'button': [{'size': 'default'}],
        \     'checkbox-group': [{'bindchange': ''}],
        \     'checkbox': [{'value': '', 'checked': ''}],
        \     'form': [{'bindsubmit': ''}],
        \     'input': [{'type': 'text'}],
        \     'label': [{'for': ''}],
        \     'picker': [{'bindchange': ''}],
        \     'radio-group': [{'bindchange': ''}],
        \     'radio': [{'checked': ''}],
        \     'switch': [{'checked': ''}],
        \     'slider': [{'value': ''}],
        \     'action-sheet': [{'bindchange': ''}],
        \     'modal': [{'title': ''}],
        \     'audio': [{'src': ''}],
        \     'video': [{'src': ''}],
        \     'image': [{'src': '', 'mode': 'scaleToFill'}],
        \   }
        \ },
        \}
" }}

" jsdoc settings {{
  let g:jsdoc_allow_input_prompt = 0
  let g:jsdoc_enable_es6 = 1
  let g:jsdoc_access_descriptions = 2
  let g:jsdoc_underscore_private = 1
  let g:jsdoc_custom_args_regex_only = 1
  let g:jsdoc_custom_args_hook = {
  \ '^\(callback\|cb\)$': {
  \   'type': ' {Function} ',
  \   'description': 'Callback function'
  \ },
  \ '\(err\|error\)$': {
  \   'type': '{Error}'
  \ },
  \ '^\(opt\|options\)$': {
  \   'type': '{Object}'
  \ },
  \ 'handler$': {
  \   'type': '{Function}'
  \ },
  \ '^\(n\|i\)$': {
  \   'type': ' {Number} '
  \ },
  \ '^i$': {
  \   'type': ' {Number} '
  \ },
  \ '^_\?\(is\|has\)': {
  \   'type': ' {Boolean} '
  \ },
  \ '^arr$': {
  \   'type': ' {Array} '
  \ },
  \ '^str$': {
  \   'type': ' {String} '
  \ },
  \ '^e$': {
  \   'type': ' {Event} '
  \ },
  \ 'el$': {
  \   'type': ' {Element} '
  \ },
  \ '^node$': {
  \   'type': ' {Element} '
  \ },
  \ '^o$': {
  \   'type': ' {Object} '
  \ },
  \ '^obj$': {
  \   'type': ' {Object} '
  \ },
  \ '^fn$': {
  \   'type': ' {Function} '
  \ },
  \}
" }}

" html5.vim {{
  let g:html5_event_handler_attributes_complete = 0
  let g:html5_rdfa_attributes_complete = 0
  let g:html5_microdata_attributes_complete = 0
  let g:html5_aria_attributes_complete = 0
" }}

" dash.vim {{
  let g:dash_map = {
  \ 'javascript': ['javascript', 'NodeJS'],
  \ 'html': ['html', 'svg'],
  \}
" }}

" vim-cool {{
  let g:CoolTotalMatches = 1
" }}"

" macdown.vim {{
  let g:macdown_marked_programme = 'misaka'
" }}

" macnote.vim {{
  let g:macnote_unite_quickfix = 1
" }}

" coc.nvim {{
  let $NODE_CLIENT_LOG_LEVEL = 'debug'
  let g:node_client_debug = 1
  let g:coc_global_extensions = []
  let g:coc_watch_extensions = []
  "let g:coc_trace_client = 1
  let g:coc_node_path = '/usr/local/bin/node'
  let g:coc_force_debug = 1
  let g:coc_filetype_map = {
        \ 'html.swig': 'html',
        \ 'wxss': 'css',
        \ }
  call coc#add_command('mundoToggle', 'MundoToggle', 'toggle mundo window')
  call coc#add_command('tree', 'Vexplore', 'open netrw explorer')
  call coc#add_command('translate', 'TranslateW', 'translate word')
" }}"

" indentLine {{
  let g:indentLine_fileTypeExclude = ['json', 'markdown']
  let g:indentLine_bufTypeExclude = ['help', 'terminal', 'nofile']
  let g:indentLine_char = '│'
" }}"

" vim-lion {{
  let g:lion_squeeze_spaces = 1
  let g:lion_create_maps = 1
" }}"

" rename.nvim {{
  let g:rename_hl_guifg = '#ffffff'
  let g:rename_hl_guibg = '#b180a4'
  let g:rename_search_execute = 'rg'
" }}"
