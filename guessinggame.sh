#!/bin/bash
#script to guess the number of files present in the directory

function fileno
{
 val=$(ls -1 /home/devi/workbench | wc -l)
 echo $val
}


echo "Guess the number of files in the directory"
read -n1 guess
printf "\n"
#echo $guess

value=$(fileno)
#echo $value

c=0

while [ $c -eq 0 ]
do
  if [ $value -eq $guess ]
  then
      echo "Congratulations! your guess is correct."
      c=1
  else
      echo "Guess the number of files in the directory"
      read -n1 guess
      printf "\n"
  fi
done
