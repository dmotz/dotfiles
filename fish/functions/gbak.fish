function greset
  cp $argv[1] (echo $argv[1] | sed -E 's/(\..+)?$/.bak.'(date +%F@%H:%M)'\1/')
  git checkout $argv[1]
end
