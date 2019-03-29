function line --wraps sed
  set -l args -n
  for n in $argv
    set -a args -e
    set -a args $n'p'
  end

  sed $args
end
