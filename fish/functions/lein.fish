function lein
  switch $argv[1]
    case repl figwheel
      command rlwrap lein $argv
    case ancient
      command lein $argv :all
    case '*'
      command lein $argv
  end
end
