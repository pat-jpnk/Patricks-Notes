#!/usr/bin/env bash

# This is a bash script which creates a sort of table of contents 
# based on the contents of this repository 

##################################################

# ---- rough outline ----

# output and store directory contents 

# example: general/C.md

# - create one array for categories
#   and one assosiative array to split 


# add all unique categories to array

# add all pairs (category -> title)

# write to README.md:
#     -> write header (category)
#         -> write all titles (for key=category in categories[])

##################################################


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

for item in "${O_ARRAY[@]}"
do 
  IFS=/ read category title <<< $item 
  containsElement $category "${CATEGORIES[@]}"                  # "${O_ARRAY[@]}"
  RES=$?

  if [ "$RES" -eq "1" ]; then
    CATEGORIES+=($category)
    CONTENTS[$category]+=$title
  else
    CONTENTS[$category]+=$title 
  fi
done 

for item in "${CATEGORIES[@]}" 
do
  echo "###$item" >> rm.txt
  printf '\n' >> rm.txt

  for element in "${!CONTENTS[@]}"          # this loops through everything, very inefficient, but bash syntax not nice and this will only run once every blue moon anyways
  do
    if [ $element == $item ]; then
      echo "  ${CONTENTS[$element]}" >> rm.txt
      printf '\n' >> rm.txt
    fi
  done
done

