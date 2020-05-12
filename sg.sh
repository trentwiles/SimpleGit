#!/bin/bash
echo "   "
echo "   "
echo "Simple Git"
echo "Git made easier."
echo "________________"
echo "Version v0.1"
echo "   "
echo "   "
while true
do
  read -p ">>>>" com
  if [[$com -eq "ok"]]
  then 
    echo "Good"
  else
    echo "Bad"
  fi
done