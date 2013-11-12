function aliaslast
  echo 'alias' $argv "'$history[1]'" >> ~/.config/fish/aliases.fish
  . ~/.config/fish/aliases.fish
end
