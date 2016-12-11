function p
  if count $argv > /dev/null
    pbpaste > $argv
  else
    pbpaste
  end
end
