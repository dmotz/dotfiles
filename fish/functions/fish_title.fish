function fish_title
  if test (pwd) = $HOME
    set dir '~'
  else
    set dir (basename (pwd))
  end

  if test $_ = 'fish'
    echo $dir
  else
    echo $dir '>' $_
  end
end
