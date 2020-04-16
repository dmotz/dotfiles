function t
  sleep (math "$argv[1] * 60")
  notif $argv[2..-1]
  afplay /System/Library/Sounds/Blow.aiff
end
