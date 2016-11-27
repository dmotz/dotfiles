function skeljs
  if count $argv > /dev/null
    mkcd $argv
  end
  sed 's/\$\$\$/'(basename (pwd))'/' < (dirname (status -f))'/skeletons/js/package.json' > package.json
  git init
  mkdir src
  touch src/index.js
  mkdir style
  touch style/main.styl
  atom
  npm i -S budo babelify browserify babel-preset-es2015 parallelshell stylus nib
  npm run dev
end
