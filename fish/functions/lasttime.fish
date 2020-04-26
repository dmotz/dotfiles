function lasttime
  gdate -u -d @(math "$CMD_DURATION / 1000") +"%T"
end
