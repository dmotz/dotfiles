function bookmark
  echo 'alias' $argv \''cd' (eval pwd)\'  >> ~/.config/fish/bookmarks.fish
  . ~/.config/fish/bookmarks.fish
end
