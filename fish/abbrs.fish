abbr -ag g       'egrep -i'
abbr -ag ag      'ag -W 120'
abbr -ag l       'lsd -l'
abbr -ag ll      'lsd -lA'
abbr -ag lll     'lsd -lAt'
abbr -ag llll    'lsd -lAS --total-size'
abbr -ag lt      'lsd --tree -d'
abbr -ag ltt     'lsd --tree'
abbr -ag df      'df -H | tail -n +2 | head -n 1 | awk \'{print $5, " ",$4, "/", $3}\''
abbr -ag tree    'tree -C -I \'node_modules|elm-stuff\''
abbr -ag coff    'coffee -mwc .'
abbr -ag canary  'open -a Google\ Chrome\ Canary --args --disable-web-security'
abbr -ag snoop   'sudo opensnoop -p'
abbr -ag fhere   'mdfind -onlyin .'
abbr -ag fname   'mdfind -name'
abbr -ag stylus  'stylus -u nib'
abbr -ag ports   'lsof -i | egrep -i listen'
abbr -ag gs      'git status -sb -uno'
abbr -ag gsa     'git status -sb'
abbr -ag ga      'git add'
abbr -ag gap     'git add -p'
abbr -ag guna    'git reset HEAD'
abbr -ag gp      'git pull origin'
abbr -ag gpr     'git pull --rebase origin'
abbr -ag gps     'git push origin'
abbr -ag gpm     'git pull origin main'
abbr -ag gpsm    'git push origin main'
abbr -ag gra     'git rebase --abort'
abbr -ag gd      'git diff'
abbr -ag gdc     'git diff --cached'
abbr -ag gdn     'git --no-pager diff'
abbr -ag gco     'git checkout'
abbr -ag gcom    'git checkout main'
abbr -ag gb      'git checkout -b'
abbr -ag gf      'git fetch'
abbr -ag gl      'git log --color --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset" --abbrev-commit'
abbr -ag gr      'git restore'
abbr -ag gst     'git stash'
abbr -ag gsta    'git stash apply'
abbr -ag gundo   'git reset --soft "HEAD^"'
abbr -ag gstats  'git shortlog -s -n'
abbr -ag bru     'brew update; and brew outdated'
abbr -ag brug    'brew upgrade; and brew cleanup'
abbr -ag pgrep   'pgrep -i'
abbr -ag pkill   'pkill -i'
abbr -ag ignore  'echo ".gitignore" >> .gitignore'
abbr -ag ip      'ifconfig en0 | grep --color=never "inet " | tr " " "\n" | head -2 | tail -1 | tee /dev/tty | pbcopy'
abbr -ag exip    'curl -s https://ipinfo.io/ip | tee /dev/tty | pbcopy'
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
abbr -ag build   'npm run build'
abbr -ag untar   'tar -xvf'
abbr -ag tar     'tar -cv'
abbr -ag caff    'caffeinate -d'
abbr -ag d       'du -sh * | sort -hr'
abbr -ag nixn    'rm -rf node_modules; npm i; notif done'
abbr -ag co      'code .'
abbr -ag rmr     'rm -rf'
abbr -ag npmls   'npm ls -g --depth=0'
abbr -ag serv    'http-server --cors'
abbr -ag gemail  'git config -l | egrep -i user.email'
abbr -ag e       $EDITOR .
abbr -ag cp      'cp -r'
abbr -ag pret    'cp $CONFIG_PATH/js/.prettierrc .'
abbr -ag plain   'p | c'
