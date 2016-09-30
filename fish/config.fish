set    fish_greeting ''
set    HISTSIZE      20000
set -x EDITOR        atom
set -x PATH          $PATH /usr/local/bin /usr/local/opt/ruby/bin ~/.rvm/bin /usr/local/cuda/bin
set -x NODE_ENV      'development'
set -x NODE_PATH     '/usr/local/lib/node'
set -x GREP_OPTIONS  '--color=always'
set -x GREP_COLOR    '1;35;40'
set -x GOPATH        ~/.go

set -x CUDA_HOME         /usr/local/cuda
set -x DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH $CUDA_HOME/lib
set -x LD_LIBRARY_PATH   $LD_LIBRARY_PATH $CUDA_HOME/lib64

. ~/.config/fish/aliases.fish
. ~/.config/fish/bookmarks.fish
. ~/.config/fish/google.fish
