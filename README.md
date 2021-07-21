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
