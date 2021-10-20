
#ls -R 

OUTPUT=$(ls */*.md)

declare -a O_ARRAY        # declare array

O_ARRAY=($OUTPUT)


# example: general/C.md

# - one array for keys + assosiative array

###declare -a CATEGORIES 

###declare -A CONTENTS 

containsElement () {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}


containsElement "general/C.md" "${O_ARRAY[@]}"

RES=$?

if [ "$RES" -eq "0" ]; then
  echo "YAY"
else 
  echo "NAY"
fi

###for item in O_ARRAY:
###do

###EX="aws/doo.md"


###IFS=/ read category content <<< $EX

###echo "$category"

###echo "$content"







#D=${echo $EX | tr "/" "\n"}

#echo "${D}"

#echo "${O_ARRAY}"











