set -x BREW_PATH /opt/homebrew

set -x PATH $PATH \
  $BREW_PATH/bin \
  $BREW_PATH/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin \
  $BREW_PATH/anaconda3/bin \
  ~/Library/Python/3.7/bin \
  ~/Library/Android/sdk/emulator \
  ~/Library/Android/sdk/tools \
  ~/Library/Android/sdk/platform-tools \
  ~/Library/Android/sdk/tools/bin \
  ~/.local/bin \
  ~/.poetry/bin \
  ~/.cargo/bin \
  /Applications/Code.app/Contents/Resources/app/bin

set fish_greeting ''
set HISTSIZE      100000

set -x CONFIG_PATH ~/__/dotfiles

set -x EDITOR code

set -x GREP_OPTIONS '--color=always'
set -x GREP_COLOR   '1;35;40'

set -x NODE_PATH $BREW_PATH/lib/node_modules
set -x NVM_DIR   ~/.nvm
set -x N_PREFIX  ~/.n

set -x GOPATH  ~/.go

set -x ANDROID_HOME      ~/Library/Android/sdk
set -x ANDROID_SDK_ROOT  ~/Library/Android/sdk
set -x ANDROID_AVD_HOME  ~/.android/avd

set -x CUDA_HOME         /usr/local/cuda
set -x DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH $CUDA_HOME/lib
set -x LD_LIBRARY_PATH   $LD_LIBRARY_PATH $CUDA_HOME/lib64 $ANDROID_HOME/tools/lib

set -x HOMEBREW_NO_ANALYTICS 1

alias python $BREW_PATH/bin/python3
alias pip    $BREW_PATH/bin/pip3

if test -e $BREW_PATH/anaconda3/bin/conda
  eval $BREW_PATH/anaconda3/bin/conda 'shell.fish' 'hook' $argv | source
end

source ~/.iterm2_shell_integration.fish

if status --is-interactive
  source $CONFIG_PATH/fish/abbrs.fish
  source $CONFIG_PATH/fish/aliases.fish
  source $CONFIG_PATH/fish/bookmarks.fish

  set fish_color_normal      ccccc6
  set fish_color_command     b6e354 --bold
  set fish_color_quote       ccccc6
  set fish_color_redirection feed6c
  set fish_color_end         23cfd5
  set fish_color_error       ff5995
  set fish_color_param       f8f8f2
  set fish_color_match       9e6ffe
  set fish_color_operator    23cfd5
end
