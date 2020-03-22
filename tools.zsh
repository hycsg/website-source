option=$1

if [[ option == "deploy" ]]; then
  jekyll build;
  cd ../houston-youth-computer-science-group.github.io;
  git add .;
  git commit && git push;
elif [[ option == "preview" ]]; then
  jekyll serve &&
    xdg-open "http://localhost:4000";
fi;
