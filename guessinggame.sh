#!/bin/bash
echo "Tell, how many files in the current directory?"
lsfiles=($(ls))
read guessnum

function getnumoffiles {
  local num=0
  local lsfiles=($(ls))
  let num=${#lsfiles[*]}
  echo $num
}

numoffiles=$(getnumoffiles)

while [[ true ]]
do
    if [[ $numoffiles -eq $guessnum ]]
    then
	echo "Congratulations, you answer is  correct"
	break;
    elif [[ $numoffiles -lt $guessnum ]]
    then 
        echo "Your answer too high"
    else
	 echo "Your answer too low"
    fi
    
    echo "try again "
    read guessnum
done


