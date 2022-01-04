function bookmark
  if count $argv > /dev/null
    set n $argv
  else
    set n (basename (pwd))
  end
  echo 'abbr -ag' $n \''cd' (pwd | sed -e 's/ /\\\ /g')\' >> ~/.config/fish/bookmarks.fish
  . ~/.config/fish/bookmarks.fish
end
