set fileencodings=utf-8,sjis
set fileencoding=utf-8
set encoding=utf-8

set number
set list
set wrap
set colorcolumn=80
set ignorecase          " 大文字小文字を区別しない
set smartcase           " 検索文字に大文字がある場合は大文字小文字を区別
set incsearch           " インクリメンタルサーチ
set hlsearch            " 検索マッチテキストをハイライト
set showmatch
" Swapファイル？Backupファイル？前時代的すぎ
" なので全て無効化する
" set nowritebackup
" set nobackup
" set noswapfile
 " 入力モード中に素早くjjと入力した場合はESCとみなす
  inoremap jj <Esc>
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

"let mapleader = "\<Space>"
noremap [Quickrun]    <Nop>
map      <Space>r   [Quickrun]
map [Quickrun]r <Plug>(quickrun)

fun! JumpToDef()
if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Jump to tag
  nn <M-g> :call JumpToDef()<cr>
  ino <M-g> <esc>:call JumpToDef()<cr>i

"dein Scripts-----------------------------
	if &compatible
	 set nocompatible               " Be iMproved
  	endif

  	  let s:dein_path = expand('~/.cache/dein')
  	  let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

  	if &runtimepath !~# '/dein.vim'
    	  if !isdirectory(s:dein_repo_path)
	    execute '!git clone https://github.com/Shougo/dein.vim's:dein_repo_path
          endif
            execute 'set runtimepath^=' . fnamemodify(s:dein_repo_path, ':p')
        endif

        if dein#load_state(s:dein_path)
          call dein#begin(s:dein_path)

          let g:config_dir  = expand('~/.cache/userconfig')
          let s:toml        = g:config_dir . '/plugin.toml'
          let s:lazy_toml   = g:config_dir . '/plugin_lazy.toml'

          " TOML 隱霎
          call dein#load_toml(s:toml,      {'lazy': 0})
          call dein#load_toml(s:lazy_toml, {'lazy': 1})

          call dein#end()
          call dein#save_state()



         endif
	" Required:
        filetype plugin indent on
        syntax enable

        " If you want to install not installed plugins on startup.
        if dein#check_install()
          call dein#install()
        endif
"End dein Scripts-------------------------

"プラグインのアンインストール
"call map(dein#check_clean(), "delete(v:val, 'rf')")

"Qfixhowm
" qfixappにruntimepathを通す(パスは環境に合わせてください)
set runtimepath+=~/.cache/qfixhowmapp/qfixhowm-master

" キーマップリーダー
let QFixHowm_Key = 'g'

" howm_dirはファイルを保存したいディレクトリを設定
let howm_dir             = '~/howm'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.txt'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'
let MyGrep_DefaultSearchWord = 1

