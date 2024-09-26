function shrinkvid
  ffmpeg -i $argv[1] -vcodec libx265 -crf 28 $argv[2]
end
