function skeljs
  if count $argv > /dev/null
    mkcd $argv
  end
  sed 's/\$\$\$/'(basename (pwd))'/' < (dirname (status -f))'/skeletons/js/package.json' > package.json
  git init
  boiler > index.html
  mkdir src
  touch src/index.js
  touch src/style.sass
  code .
  npm i -D parcel
  npm run dev
end
