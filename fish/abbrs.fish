abbr -ag g       'egrep -i'
abbr -ag lll     'll -a'
abbr -ag l       'll -tc | head -n 11 | tail -n +2 | awk \'{print $10,$6,$7,$9}\' | column -t'
abbr -ag df      'df -H'
abbr -ag tree    'tree -C -I \'node_modules|elm-stuff\''
abbr -ag coff    'coffee -mwc .'
abbr -ag canary  'open -a Google\ Chrome\ Canary --args --disable-web-security'
abbr -ag snoop   'sudo opensnoop -p'
abbr -ag fhere   'mdfind -onlyin .'
abbr -ag fname   'mdfind -name'
abbr -ag stylus  'stylus -u nib'
abbr -ag ports   'lsof -i | g listen'
abbr -ag gs      'git status -sb'
abbr -ag ga      'git add'
abbr -ag gap     'git add -p'
abbr -ag guna    'git reset HEAD'
abbr -ag gc      'git commit -m'
abbr -ag gp      'git pull origin'
abbr -ag gps     'git push origin'
abbr -ag gpm     'git pull origin master'
abbr -ag gpsm    'git push origin master'
abbr -ag gd      'git diff'
abbr -ag gdc     'git diff --cached'
abbr -ag gco     'git checkout'
abbr -ag gcom    'git checkout master'
abbr -ag gb      'git checkout -b'
abbr -ag gf      'git fetch'
abbr -ag gl      'git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset" --abbrev-commit'
abbr -ag gst     'git stash'
abbr -ag gsta    'git stash apply'
abbr -ag gundo   'git reset --soft "HEAD^"'
abbr -ag bru     'brew update; and brew outdated'
abbr -ag brug    'brew upgrade; and brew cleanup'
abbr -ag pgrep   'pgrep -i'
abbr -ag pkill   'pkill -i'
abbr -ag ignore  'echo ".gitignore" >> .gitignore'
abbr -ag ip      'ifconfig en0 | grep --color=never "inet " | tr " " "\n" | head -2 | tail -1 | tee /dev/tty | pbcopy'
abbr -ag exip    'dig +short myip.opendns.com @resolver1.opendns.com | tee /dev/tty | pbcopy'
abbr -ag aerun   'dev_appserver.py'
abbr -ag aedep   '/usr/local/bin/appcfg.py --oauth2_credential_file=~/.appcfg_oauth2_tokens update .'
abbr -ag o       'open .'
abbr -ag hdesk   'defaults write com.apple.finder CreateDesktop -bool false; killall Finder'
abbr -ag sdesk   'defaults write com.apple.finder CreateDesktop -bool true; killall Finder'
abbr -ag run     'npm run'
abbr -ag py      'python3'
abbr -ag showgit 'open (git remote get-url origin)'
abbr -ag ptolemy '~/__/ptolemy/ptolemy < ~/Documents/My\ Clippings.txt'
abbr -ag cf      'functions-emulator'
abbr -ag cat     'bat'
abbr -ag start   'npm start'
abbr -ag untar   'tar -xvf'
abbr -ag tar     'tar -cv'
abbr -ag caff    'caffeinate -d'
abbr -ag d       'du -sh * | sort -hr'
