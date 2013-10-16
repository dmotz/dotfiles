function fish_prompt
  echo -n (dirname (pwd))/
  set_color -o red
  echo (basename (pwd))
  set_color -o blue
  echo -n '$ '
  set_color -o normal
end
