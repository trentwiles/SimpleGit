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
    echo "sg prep --> Prepare your project for GitHub"
    echo "sq setup --> Prepares your files for GitHub"
    echo "sq exp --> Exports files to GitHub."
    echo "Instructions: If this is your first time, run"
  elif [ $com = "sg prep" ]
    echo "Preparing the repo for GitHub."
    sleep 2
    git add .
    git commit -m "first commit"
  elif [ $com = "sg setup" ]
    echo "Configuring..."
    read -p "What is your username?" usr
    read -p "What is your repo name?" rpo
    git remote add origin https://github.com/${usr}/${rpo}.git
    sleep 2
    echo "Repo is now ready. To add all files, run sg exp"
  elif [ $com = "sg exp" ]
    echo "Exporting to GitHub.com"
    sleep 2
    git push -u origin master
  elif [ $com = "sg quick" ]
    echo "Quick Eport begining."
    sleep 2
    read -p "What is your username?" usr
    read -p "What is your repo name?" rpo
    git remote add origin https://github.com/${usr}/${rpo}.git
    sleep 2
    git add .
    git commit -m "first commit"
    echo "Ready for GitHub!"
    git push -u origin master
  else
    echo "Command not found. Try sg help?"
  fi
done