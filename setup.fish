ln -s $CONFIG_PATH/fish ~/.config/fish
ln -s $CONFIG_PATH/fish/fish_history ~/.local/share/fish/fish_history
ln -s $CONFIG_PATH/js/.eslintrc ~/.eslintrc
ln -s $CONFIG_PATH/js/.prettierrc ~/.prettierrc
ln -s $CONFIG_PATH/.lein ~/.lein
ln -s $CONFIG_PATH/git/.gitignore_global ~/.gitignore_global
ln -s $CONFIG_PATH/conda/.condarc ~/.condarc
ln -s $CONFIG_PATH/editors/vscode/settings.json \
      ~/Library/Application\ Support/Code/User/settings.json
ln -s $CONFIG_PATH/editors/vscode/keybindings.json \
      ~/Library/Application\ Support/Code/User/keybindings.json

mkdir -p ~/.clojure
ln -s $CONFIG_PATH/clojure/deps.edn ~/.clojure/deps.edn
ln -s $CONFIG_PATH/clojure/user.clj ~/.clojure/user.clj

mkdir -p ~/.stack
ln -s $CONFIG_PATH/stack/config.yaml ~/.stack/config.yaml
ln -s $CONFIG_PATH/stack/global-project/stack.yaml \
      ~/.stack/global-project/stack.yaml

if test (uname) = Darwin
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

git config --global core.pager "delta --dark"

# disable shell login message
touch ~/.hushlogin

sudo echo $BREW_PATH/bin/fish >> /etc/shells
chsh -s $BREW_PATH/bin/fish

if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo \
    $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end
