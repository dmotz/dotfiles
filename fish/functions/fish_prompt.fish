function fish_prompt
  set_color -o red
  echo  $PWD
  set_color -o blue
	echo -n '$ '
  set_color -o normal
end
