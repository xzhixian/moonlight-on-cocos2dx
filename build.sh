#!/bin/sh

###
# Usage:
# ./thisscript.sh path_to_process
###

CURRENT_PATH=`pwd`
echo $CURRENT_PATH

find $1 -type l | tr \\n \\0 | while read -d "" i
do
  echo "processing: $i"
  cd `dirname $i`
  BASENAME=`basename $i`
  #echo "basename: $BASENAME"
  DESTINATION="$(readlink ./$BASENAME)"
  echo "dest: $DESTINATION"
  rsync $DESTINATION $BASENAME
  cd $CURRENT_PATH
done

