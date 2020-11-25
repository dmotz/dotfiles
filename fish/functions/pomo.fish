function pomo
  tput reset
  echo '🍅' (date +"%H:%M  -  %m.%d.%y")
  echo ''

  for i in (seq 24)
    sleep 60
    echo '⏳' $i
  end

  t 1 'break time'
  echo '⌛️ 25'
  t 5 'cycle complete'
  echo '✅ done'
end
