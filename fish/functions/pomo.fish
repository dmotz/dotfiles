function pomo
  tput reset
  echo '🍅' (date +"%H:%M  -  %m.%d.%y")
  echo ''

  for i in (seq 24)
    sleep 60
    afplay /System/Library/Sounds/Tink.aiff
    echo '⏳' $i
  end

  t 1 'break time'
  echo '⌛️ break'

  t 5 'cycle complete'
  echo '✅ done'
  afplay /System/Library/Sounds/Glass.aiff
end
