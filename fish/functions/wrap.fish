function wrap
  echo $argv | fold -sw 60 | tee /dev/tty | pbcopy
end
