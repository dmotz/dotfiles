function bk
  if test -z "$argv[1]"
    echo "Usage: bk <filename>"
    return 1
  end

  set filename $argv[1]
  set parts (string split . -- "$filename")
  set basename $parts[1]

  if set -q parts[2]
    set ext "."(string join . $parts[2..])
  else
    set ext ""
  end

  cp -- "$filename" "$basename."(date +%Y-%m-%d_%H:%M)".bk$ext"
end
