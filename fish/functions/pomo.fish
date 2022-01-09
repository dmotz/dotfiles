function pomo -a 'quiet'
  argparse 'q/quiet' -- $argv
  tput reset
  echo '🍅' (date +"%H:%M  -  %m.%d.%y")
  echo ''

  for i in (seq 24)
    sleep 60

    if test -z $quiet
      afplay /System/Library/Sounds/Tink.aiff
    end

    echo '⏳' $i
  end

  t 1 'break time'
  echo '⌛️ break'

  t 5 'cycle complete'
  echo '✅ done'

  if test -z $quiet
    afplay /System/Library/Sounds/Glass.aiff
  end
end
