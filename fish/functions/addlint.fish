function addlint
  cp $CONFIG_PATH/js/eslint-config.js .
  npm i -D eslint @eslint/js globals
end
