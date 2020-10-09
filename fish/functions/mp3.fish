function mp3
  ffmpeg -i $argv[1] (echo $argv[1] | sed 's/\..*/.mp3/')
end
