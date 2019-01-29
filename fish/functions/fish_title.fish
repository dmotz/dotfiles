function fish_title
  set dir (basename (pwd) | sed "s|^$USER\$|~|")

  if test $_ = 'fish'
    echo $dir
  else
    echo $dir '>' $_
  end
end
