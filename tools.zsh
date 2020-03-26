#!/bin/bash
option=$1


if [[ $option == "deploy" ]]; then
  echo "Pulling latest rendered site";
  cd ../hycsg.github.io && git pull;
  echo "Building Site";
  cd ../website-source && jekyll build;
  echo "Committing rendered changes";
  cd ../hycsg.github.io && git add . && git commit && git push;
elif [[ $option == "preview" ]]; then
  echo "Preview";
  jekyll serve &&
    xdg-open "http://localhost:4000";
fi;
