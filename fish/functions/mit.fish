function mit
  sed 's/\$\$\$\$/'(date +'%Y')'/' < (dirname (status -f))'/skeletons/mit' > LICENSE
end
