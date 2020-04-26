function chakra
  while true
    echo '⏳  '(date +%I:%M%p)
    sleep (math "15 * 60")
    osascript -e 'display dialog "⏳\n\nmemento mori \n\n'(date +%I:%M%p)'" buttons {"scio"}'
  end
end
