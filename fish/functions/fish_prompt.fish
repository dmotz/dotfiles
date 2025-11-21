function fish_prompt
  if test (pwd) = $HOME
    set_color -o green
    echo -n '~'
  else
    echo -n (dirname (pwd) | sed "s|^$HOME|~|")/
    set_color -o brwhite
    echo -n (basename (pwd))
  end

  set -l git_branch (git branch --show-current 2>/dev/null)

  if test -z "$git_branch"
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1
      set git_branch (git rev-parse --short HEAD 2>/dev/null)
    end
  end

  if test -n "$git_branch"
    set_color -o red
    echo -n " $git_branch"
  end

  echo

  set_color -o blue
  echo -n '$ '
  set_color -o normal
end
