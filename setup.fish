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
ln -s $CONFIG_PATH/editors/atom/config.cson ~/.atom/config.cson

if test (uname) = Darwin
  sudo ./macos/macos.sh
  brew bundle install --file=./macos/Brewfile
  git config --global credential.helper osxkeychain
end

npm i -g (cat ./js/npmfile)
npm set init.author.name 'Dan Motzenbecker'
npm set init.author.email 'dan@oxism.com'
npm set init.author.url 'https://oxism.com'
npm set init.license 'MIT'

git config --global core.pager "delta --dark"

# disable shell login message
touch ~/.hushlogin

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end
