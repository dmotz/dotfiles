set -x PATH $PATH \
  ~/homebrew/bin \
  ~/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin \
  ~/homebrew/anaconda3/bin \
  ~/_/flutter/bin \
  ~/Library/Android/sdk/tools \
  ~/Library/Android/sdk/platform-tools \
  ~/Library/Android/sdk/tools/bin \
  ~/Library/Android/sdk/emulator

set fish_greeting ''
set HISTSIZE      100000

set -x EDITOR            'atom'
set -x NODE_ENV          'development'
set -x GREP_OPTIONS      '--color=always'
set -x GREP_COLOR        '1;35;40'

set -x NODE_PATH         /usr/local/lib/node
set -x GOPATH            ~/.go
set -x ANDROID_HOME      ~/Library/Android/sdk
set -x ANDROID_SDK_ROOT  ~/Library/Android/sdk
set -x ANDROID_AVD_HOME  ~/.android/avd
set -x CUDA_HOME         /usr/local/cuda
set -x DYLD_LIBRARY_PATH $DYLD_LIBRARY_PATH $CUDA_HOME/lib
set -x LD_LIBRARY_PATH   $LD_LIBRARY_PATH $CUDA_HOME/lib64 $ANDROID_HOME/tools/lib
set -x NVM_DIR           ~/.nvm

. ~/.config/fish/aliases.fish
. ~/.config/fish/bookmarks.fish
. ~/.config/fish/google.fish
