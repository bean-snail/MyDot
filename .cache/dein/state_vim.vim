if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/data/data/com.termux/files/home/.cache/dein/repos/github.com/Shougo/dein.vim/,/data/data/com.termux/files/home/.vim,/data/data/com.termux/files/usr/share/vim/vimfiles,/data/data/com.termux/files/usr/share/vim/vim80,/data/data/com.termux/files/usr/share/vim/vim80/pack/dist/opt/matchit,/data/data/com.termux/files/usr/share/vim/vimfiles/after,/data/data/com.termux/files/home/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/data/data/com.termux/files/home/.vimrc', '/data/data/com.termux/files/home/.cache/userconfig/plugin.toml', '/data/data/com.termux/files/home/.cache/userconfig/plugin_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/data/data/com.termux/files/home/.cache/dein'
let g:dein#_runtime_path = '/data/data/com.termux/files/home/.cache/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/data/data/com.termux/files/home/.cache/dein/.cache/.vimrc'
let &runtimepath = '/data/data/com.termux/files/home/.cache/dein/repos/github.com/Shougo/dein.vim/,/data/data/com.termux/files/home/.vim,/data/data/com.termux/files/usr/share/vim/vimfiles,/data/data/com.termux/files/home/.cache/dein/repos/github.com/Shougo/dein.vim,/data/data/com.termux/files/home/.cache/dein/.cache/.vimrc/.dein,/data/data/com.termux/files/usr/share/vim/vim80,/data/data/com.termux/files/home/.cache/dein/.cache/.vimrc/.dein/after,/data/data/com.termux/files/usr/share/vim/vim80/pack/dist/opt/matchit,/data/data/com.termux/files/usr/share/vim/vimfiles/after,/data/data/com.termux/files/home/.vim/after'
filetype off
