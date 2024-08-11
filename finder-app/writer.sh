#! /bin/bash

set -e
set -u

if [ $# -lt 2 ]
then
    echo -e "Usage:\twriter.sh <write file full path> <write string>"
    exit 1
fi

writefile=$1
writestr=$2

justdir=$(dirname $writefile)
justfile=$(basename $writefile)

echo -e "  writer.sh-->\twrite file full path:\t$writefile"
echo -e "  writer.sh-->\twrite directory part:\t$justdir"
echo -e "  writer.sh-->\twrite file part:\t$justfile"

if [ ! -d "$justdir" ]
then
    mkdir -p $justdir
    echo -e "  writer.sh-->\tmade dir $justdir"
fi

touch $writefile
echo "$writestr" > $writefile
