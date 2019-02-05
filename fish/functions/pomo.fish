function pomo
  tput reset
  echo '🍅' (date)
  echo ''
  for i in (seq 24)
    sleep 60
    echo $i
  end
  t 1 'break time'
  echo 25
  t 5 'cycle complete'
end
