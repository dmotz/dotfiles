function fish_prompt
  if test (pwd) = $HOME
    set_color -o green
    echo '~'
  else
    echo -n (dirname (pwd) | sed "s|^$HOME|~|")/
    set_color -o brwhite
    echo (basename (pwd))
  end

  set_color -o blue
  echo -n '$ '
  set_color -o normal
end
