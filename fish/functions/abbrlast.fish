function abbrlast
  echo 'abbr -ag' $argv "'$history[1]'" >> ~/.config/fish/abbrs.fish
  abbr -ag $argv $history[1]
end
