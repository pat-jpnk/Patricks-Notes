#!/usr/bin/env bash

# This is a bash script which creates a sort of table of contents 
# based on the contents of this repository 

# note to self: multidimensional arrays don't exist in bash (except with tricks)


OUTPUT=$(ls */*.md)       # save command output 

declare -a O_ARRAY        # declare array

declare -a CATEGORIES     # declare array 

declare -A CONTENTS       # declare associative array

O_ARRAY=($OUTPUT)         # assing values to array


# define function - checks if array already contains category (from StackOverflow)

containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}

# populate arrays

for item in "${O_ARRAY[@]}"
do 
  IFS=/ read category title <<< $item 
  containsElement $category "${CATEGORIES[@]}"                  # "${O_ARRAY[@]}"
  RES=$?

  if [ "$RES" -eq "1" ]; then
    CATEGORIES+=($category)
    CONTENTS[$category]+="$title "
  else
    CONTENTS[$category]+="$title " 
  fi
done 


# write to file

for item in "${CATEGORIES[@]}" 
do
  echo "### $item" >> README.md
  printf '\n' >> README.md

  for element in "${!CONTENTS[@]}"        
  do
    if [ $element == $item ]; then
      printf "%s\\ " ${CONTENTS[$element]} >> README.md
      printf '\n' >> README.md
      break
    fi
  done
done
