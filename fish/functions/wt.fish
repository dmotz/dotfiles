function wt
  git worktree add ../$argv -b $argv
  rsync -a --exclude node_modules --exclude .git ./ ../$argv/
  cd ../$argv
  echo "installing packages..."
  pnpm i --silent
end
