function line --wraps sed
  set -l args -n
  for n in $argv
    set -a args -e $n'p'
  end

  sed $args
end
