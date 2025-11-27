function wt
  git worktree add ../$argv -b $argv
  or return 1
  rsync -a --exclude node_modules --exclude .git ./ ../$argv/
  cd ../$argv
  echo "installing packages..."
  pnpm i --silent
end
