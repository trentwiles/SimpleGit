#!/bin/bash

echo "   "
echo "   "
echo "Simple Git"
echo "Git made easier."
echo "________________"
echo "Version v0.2"
echo "   "
echo "Run sg help for help. You must have git installed for Simple Git to work."
echo "   "
while true
do
  read -p ">>>>" com
  if [ "$com" = "sg help" ]
  then 
    echo "Commands:"
    echo "sg prep --> Prepare your project for GitHub"
    echo "sq setup --> Prepares your files for GitHub"
    echo "sq exp --> Exports files to GitHub."
    echo "Instructions: If this is your first time, run"
  elif [ "$com" = "sg prep" ]
    then
    echo "Preparing the repo for GitHub."
    sleep 2
    git add .
    git commit -m "Exported with Simple git"
  elif [ "$com" = "sg setup" ]
    then
    echo "Configuring..."
    read -p "What is your username?" usr
    read -p "What is your repo name?" rpo
    git remote add -f origin https://github.com/${usr}/${rpo}.git
    sleep 2
    echo "Repo is now ready. To add all files, run sg exp"
  elif [ "$com" = "sg exp" ]
    then
    echo "Setting Up..."
    sleep 2
    git add .
    git commit -m "Exported with Simple git"
    echo "Exporting to GitHub.com"
    echo "You will need to enter your GitHub username and password."
    sleep 2
    git push -u origin master
  elif [ "$com" = "sg update" ]
    then
    echo "Updating your project from the github repo."
    sleep 2
    read -p "What is your username?" usr
    read -p "What is your repo name?" rpo
    git pull https://github.com/${usr}/${rpo} master
  else
    echo "Command not found. Try sg help?"
  fi
done