function notif
  osascript -e "display notification \"$argv[1..-1]\" with title \"👋\""
end
