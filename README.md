Archivo de configuracion de SpaceVim init.toml

ruta ~/.SpaceVim.d/ 


Try SpaceVim without over-writing an existing Vim or Neovim configuration by installing manually.

git clone https://github.com/SpaceVim/SpaceVim.git ~/.SpaceVim
Then create an alias to run spacevim on the command line

alias svim='vim -u ~/.SpaceVim/vimrc'
Run nvim command in a terminal and Spacevim will install the plug-ins from the default layers.

See the quick start guide for other install options

Make vimproc Library
SpaceVim uses vimproc library and should build the library file during the installation. If the build failed then the following error is shown when running neovim

[vimproc] vimproc's DLL: "~/.SpaceVim/bundle/vimproc.vim/lib/vimproc_linux64.so" is not found.
To resolve this issue, change into the vimproc.vim bundle director and run the make command

cd ~/.SpaceVim/bundle/vimproc.vim/

make

Configure Spacevim options
Edit the .Spacevim.d/init.toml file, or use SPC f v d to open this configuration file.

source: https://practical.li/clojure/clojure-editors/editor-install-guides/spacevim-fireplace.html#manual

Define when configuration is called
In the [options] section of the config bootstrap_before and bootstrap_after are strings that contain a vim method name.

[options]
    enable_guicolors = false
    snippet_engine = "neosnippet"
    statusline_separator = 'arrow'
    sidebar_width = 30
    bootstrap_before = "myspacevim#before"
    bootstrap_after = "myspacevim#after"
Create a new ~/.SpaceVim.d/autoload/myspacevim.vim and define a function

function! myspacevim#before() abort
    let g:neomake_enabled_c_makers = ['clang']
    nnoremap jk <esc>
endf
function! myspacevim#after() abort
endf
Variables, shortcut and other vim scripts, such as customizing some autocmd, can be included.

augroup MySpaceVim
  au!
  autocmd FileType markdown setlocal nowrap
augroup END

https://practical.li/clojure/clojure-editors/editor-install-guides/spacevim-configuration.html
