function boiler
  echo \
"<!DOCTYPE html>
<html lang=\"en\">
  <head>
    <meta charset=\"utf-8\" />
    <meta name=\"description\" content=\"\" />
    <meta
      name=\"viewport\"
      content=\"width=device-width, initial-scale=1.0, user-scalable=no\"
    />
    <meta name=\"author\" content=\"Dan Motzenbecker\" />
    <!-- <link href=\"images/favicon.png\" rel=\"icon\" type=\"image/png\" /> -->
    <!-- <link rel=\"stylesheet\" type=\"text/css\" /> -->
    <title>$argv[1]</title>
  </head>
  <body>
    <script src=\"src/index.js\"></script>
  </body>
</html>
"
end
