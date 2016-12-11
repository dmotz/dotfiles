function c
  if count $argv > /dev/null
    pbcopy < $argv
  else
    pbcopy
  end
end
