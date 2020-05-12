#!/bin/bash
echo "   "
echo "   "
echo "Simple Git"
echo "Git made easier."
echo "________________"
echo "Version v0.1"
echo "   "
echo "Run sg help for help. You must have git installed for Simple Git to work."
echo "   "
while true
do
  read -p ">>>>" com
  if [ $com = "sg help" ]
  then 
    echo "Commands:"
  elif [ $com = "sg prep" ]
    echo "Preparing the repo for GitHub."
    echo "When you get to the commit screen, type your message and press CTRL + X and then ENTER."
    sleep 5
    git add .
    git commit
  elif [ $com = "sg exp" ]
    echo "Exporting..."
  else
    echo "Command not found. Try sg help?"
  fi
done