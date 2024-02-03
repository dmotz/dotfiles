function bk
  set parts (string split . $argv)

  if test -n "$parts[2]"
    set ext ".$parts[2]"
  else
    set ext ""
  end

  cp $argv $parts[1]"."(date +%Y-%m-%d_%H:%M)".bk$ext"
end
