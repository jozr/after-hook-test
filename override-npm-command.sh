eval echo "Loading file"

npm() {
  echo "in npm function"
  if [[ $* == "install "* || $* == "i "* ]]; then
    
    # When running `$ npm install <name>` (i.e. `$ npm install ...` followed
    # by a space char and some other chars such as a package name - run
    # the command provided.
    command npm "$@"

    command npm rebuild
    # Then run a pseudo `postinstall` command, such as another shell script.
    echo "pseudo postinstall"
    
  else
    # Run the `$ npm install` command and all others as per normal.
    command npm "$@"
  fi
}
