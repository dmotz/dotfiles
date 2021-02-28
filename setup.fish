function lnk
  rm -rf $argv[2]
  ln -s $argv[1] $argv[2]
end

source ./fish/config.fish
touch ./fish/bookmarks.fish

mkdir -p ~/.config

lnk $CONFIG_PATH/fish ~/.config/fish
lnk $CONFIG_PATH/js/.eslintrc ~/.eslintrc
lnk $CONFIG_PATH/js/.prettierrc ~/.prettierrc
lnk $CONFIG_PATH/.lein ~/.lein
lnk $CONFIG_PATH/git/.gitconfig ~/.gitconfig
lnk $CONFIG_PATH/git/.gitignore_global ~/.gitignore_global
lnk $CONFIG_PATH/conda/.condarc ~/.condarc
lnk $CONFIG_PATH/editors/vscode/settings.json \
      ~/Library/Application\ Support/Code/User/settings.json
lnk $CONFIG_PATH/editors/vscode/keybindings.json \
      ~/Library/Application\ Support/Code/User/keybindings.json

mkdir -p ~/.clojure
lnk $CONFIG_PATH/clojure/deps.edn ~/.clojure/deps.edn
lnk $CONFIG_PATH/clojure/user.clj ~/.clojure/user.clj

mkdir -p ~/.stack/global-project
lnk $CONFIG_PATH/stack/config.yaml ~/.stack/config.yaml
lnk $CONFIG_PATH/stack/global-project/stack.yaml \
      ~/.stack/global-project/stack.yaml

if test (uname) = Darwin
  xcode-select --install
  sudo $CONFIG_PATH/macos/macos.sh
  brew bundle install --file=$CONFIG_PATH/macos/Brewfile --verbose
  git config --global credential.helper osxkeychain

  ln -s $CONFIG_PATH/iterm/custom.json \
      ~/Library/Application\ Support/iTerm2/DynamicProfiles/custom.json
end

npm i -g (cat $CONFIG_PATH/js/npmfile)
npm set init.author.name 'Dan Motzenbecker'
npm set init.author.email 'dan@oxism.com'
npm set init.author.url 'https://oxism.com'
npm set init.license 'MIT'

# disable shell login message
touch ~/.hushlogin

sudo echo $BREW_PATH/bin/fish >> /etc/shells
chsh -s $BREW_PATH/bin/fish

if not functions -q fisher
  curl -sL https://git.io/fisher | source; and fisher install jorgebucaran/fisher
end
