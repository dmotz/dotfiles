function atm
  if count $argv > /dev/null
    atom $argv
  else
    atom .
  end
end
