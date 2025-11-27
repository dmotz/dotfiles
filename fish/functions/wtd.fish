function wtd
  git worktree prune
  git branch -D $argv
end
