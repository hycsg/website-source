#!/bin/bash
option=$1

echo [[ option == "preview" ]];

if [[ $option == "deploy" ]]; then
  jekyll build;
  cd ../houston-youth-computer-science-group.github.io;
  git pull;
  git add .;
  git commit && git push;
elif [[ $option == "preview" ]]; then
  echo "Preview";
  jekyll serve &&
    xdg-open "http://localhost:4000";
fi;
