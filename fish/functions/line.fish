function line --wraps sed --description 'e.g. line 33 34 < file'
  set -l args -n
  for n in $argv
    set -a args -e $n'p'
  end

  sed $args
end
