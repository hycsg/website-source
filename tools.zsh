option=$1

if   [[ option == "run-site" ]]; then
  jekyll serve;
  xdg-open "http://localhost:4000";
elif [[ option == "build" ]]; then
  jekyll build;
fi;
