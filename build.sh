#!/bin/sh

###
# Usage:
# ./thisscript.sh path_to_process
###

rm -rf ./build

cp -R ./lib ./build

CURRENT_PATH=`pwd`
echo $CURRENT_PATH

find ./build -type l | tr \\n \\0 | while read -d "" i
do
  echo "processing: $i"
  cd `dirname $i`
  BASENAME=`basename $i`
  #echo "basename: $BASENAME"
  DESTINATION="$(readlink ./$BASENAME)"
  echo "dest: $DESTINATION"
  rm -rf $BASENAME
  cp -fvR $DESTINATION $BASENAME
  cd $CURRENT_PATH
done

