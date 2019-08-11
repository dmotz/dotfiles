ln -s $CONFIG_PATH/fish ~/.config/fish
ln -s $CONFIG_PATH/fish/fish_history ~/.local/share/fish/fish_history
ln -s $CONFIG_PATH/js/.eslintrc ~/.eslintrc
ln -s $CONFIG_PATH/js/.prettierrc ~/.prettierrc
ln -s $CONFIG_PATH/js/.lein ~/.lein

if test (uname) = Darwin                                                                                     16:30:17
  fish ./macos/macos.fish
  brew bundle install --file=./macos/Brewfile
end

npm i -g (cat ./js/npmfile)
npm set init.author.name 'Dan Motzenbecker'
npm set init.author.email 'dan@oxism.com'
npm set init.author.url 'https://oxism.com'
npm set init.license 'MIT'

git config --global pager.diff 'diff-so-fancy | less --tabs=1,5 -RFX'
git config --global pager.show 'diff-so-fancy | less --tabs=1,5 -RFX'

# disable shell login message
touch ~/.hushlogin
