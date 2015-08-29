function lein
  if [ $argv[1] = 'repl' ]
    command rlwrap lein $argv
  else
    command lein $argv
  end
end
