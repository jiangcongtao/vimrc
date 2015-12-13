" vim: set sw=2 ts=2 sts=2 et tw=78 foldmarker={{,}} foldmethod=marker foldlevel=99:
let mapleader = ","

" basic {{
  " quite useful
  nnoremap <leader>e :e <C-R>=expand('%:p:h').'/'<cr>
  " vimrc reload edit
  nnoremap <leader>rl :source ~/.vimrc<cr>
  nnoremap <leader>{ F)a<space>{<enter><space><space><esc>o<esc>i}<esc>O<tab>
" }}

" content edit {{
  " TODO use clean to replace
  " rm windows/DOS ^m
  noremap <leader>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
  " space remove in the end of every line
  noremap <leader>rs :%s/\s\+$//<cr>
" }}

" spell checking {{
  nnoremap <leader>sc :setl spell!<cr>
  nnoremap <leader>s? z=
  nnoremap <leader>sn ]s
  nnoremap <leader>sp [s
  nnoremap <leader>sa zg
" }}

" cope {{
  nnoremap <leader>co :cope<cr>
  nnoremap <leader>cn :cn<cr>
  nnoremap <leader>cp :cp<cr>
  nnoremap <leader>cc :ccl<cr>
" }}

" setting switch {{
  nnoremap <leader>ic :set ic!<cr>
  nnoremap <leader>hl :set hls!<cr>
  nnoremap <leader>hc :let @/ = ""<cr>
  nnoremap <leader>pt :set paste!<cr>
  nnoremap <leader>nu :call NumberToggle()<cr>
" }}

" plugin {{
  " vim-test
  nmap <silent> <localleader>t :TestNearest<CR>
  " vim-session
  nmap <leader>sl :OpenSession
  nmap <leader>ss :SaveSession
  nmap <leader>sr :RestartVim<cr>
  nmap <leader>sd :CloseSession<cr>
  " fugitive
  nnoremap <silent> <leader>gg :Ggrep<CR>
  nnoremap <silent> <leader>gs :Gstatus<CR>
  nnoremap <silent> <leader>gd :Gdiff<CR>
  " ultisnips
  noremap <leader>snip :UltiSnipsEdit<cr>
  noremap <leader>js :UltiSnipsAddFiletypes html.js<cr>
  " ctrlsf
  map <leader>st :CtrlSFToggle<cr>
  map <leader>sf :CtrlSF<space>
  " vim-notes
  map <leader>nn :Note<cr>
  map <leader>ne :Note
  map <leader>ns :SearchNotes
  map <leader>nd :DeleteNote<cr>
  map <leader>nr :RecentNotes<cr>
  map <leader>nl :RelatedNotes<cr>
  " Gundo
  nnoremap <D-u> :GundoToggle<CR>
  " vim-shell
  nnoremap <Leader>o :Open<CR>
  imap <2-LeftMouse> <C-o>:Open<CR>
  nmap <2-LeftMouse> :Open<CR>
  " tern
  nnoremap <leader>tb :TernDocBrowse<cr>
  nnoremap <leader>tt :TernType<cr>
  nnoremap <leader>tf :TernDef<cr>
  nnoremap <leader>td :TernDoc<cr>
  nnoremap <leader>tp :TernDefPreview<cr>
  nnoremap <leader>tr :TernRename<cr>
  nnoremap <leader>ts :TernRefs<cr>
  " neocomplete
  inoremap <expr><C-d>     neocomplete#undo_completion()
  inoremap <expr><C-l>     neocomplete#complete_common_string()
  " <CR>: close popup and save indent.
  inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
  function! s:my_cr_function()
    return pumvisible() ? "\<C-y>" : "\<CR>"
  endfunction
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
  " <C-h>, <BS>: close popup and delete backword char.
  inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
  inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" }}

" filter {{
  nnoremap <leader>au :!autoprefixer %<cr>
" }}

" wrap {{
  vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
  vnoremap <leader>` <esc>`<i`<esc>`>la`<esc>
  vnoremap <leader>( <esc>`<i(<esc>`>la)<esc>
" }}

" grep {{
vnoremap <leader>g :<C-u>call  -buffer-name=grep     GrepFromSelected(visualmode())<cr>
nnoremap <leader>g :set        -buffer-name=grep     operatorfunc=GrepFromSelected<cr>g@
function! GrepFromSelected(type)
  let saved_unnamed_register = @@
  if a:type ==# 'v'
      normal! `<v`>y
  elseif a:type ==# 'char'
      normal! `[v`]y
  else
      return
  endif
  silent execute "Unite -buffer-name=grep grep:. -input=" . @@
  let @@ = saved_unnamed_register
endfunction
" }}

function! NumberToggle()
  if(&number == 1) | set nu! | set rnu! | else | set rnu | set nu | endif
endfunction
