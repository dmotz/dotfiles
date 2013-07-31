# environment
set    fish_greeting ''
set    HISTSIZE      20000
set -x EDITOR        subl
set -x PATH          $PATH /usr/local/share/npm/bin
set -x NODE_ENV      'development'
set -x NODE_PATH     '/usr/local/lib/node'


# aliases
alias g       'grep -i'
alias lll     'll -a'
alias coff    'coffee -mwc .'
alias canary  'open -a Google\ Chrome\ Canary --args --disable-web-security'
alias hg      'history | g'
alias snoop   'sudo opensnoop -p'
alias fhere   'mfind -onlyin .'
alias fname   'mfind -name'
alias stylus  'stylus -u nib'
alias ports   'lsof -i | g listen'
alias nosleep 'pmset noidle'

