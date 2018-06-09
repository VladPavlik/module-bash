#!/bin/bash
if [[ $# != 1 ]];
then 
  echo "Too many(few) arguments"
  exit 1
fi
if ! [ -f $1 ];
then
  echo "Error.."
  exit 1
fi
output=""
output+=$(grep -o 0 $1 | wc -l)
output+=" zeroes, "
output+=$(grep -o 1 $1 | wc -l)
output+=" ones, "
output+=$(grep -o 2 $1 | wc -l)
output+=" twoes, "
output+=$(grep -o 3 $1 | wc -l)
output+=" threes, "
output+=$(grep -o 4 $1 | wc -l)
output+=" fours, "
output+=$(grep -o 5 $1 | wc -l)
output+=" fives, "
output+=$(grep -o 6 $1 | wc -l)
output+=" sixs, "
output+=$(grep -o 7 $1 | wc -l)
output+=" sevens, "
output+=$(grep -o 8 $1 | wc -l)
output+=" eights, "
output+=$(grep -o 9 $1 | wc -l)
output+=" nines"

echo $output