function t
  sleep (math "$argv[1] * 60")
  osascript -e "display notification \"$argv[2..-1]\" with title \"👋\""
  afplay /System/Library/Sounds/Blow.aiff
end
