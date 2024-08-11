#! /bin/bash

set -e
set -u

# echo $#

if [ $# -lt 2 ]
then
    echo -e "Usage:\tfinder.sh <files dir> <search string>"
    exit 1
fi

filesdir=$1
searchstr=$2
#echo -e $filesdir
#echo -e $searchstr

if [ ! -d "$filesdir" ]
then
    echo -e "  finder.sh-->\t$filesdir is an invalid directory structure. exiting..."
    exit 1
fi

NUM_FILES=$(ls $filesdir -1 | wc -l)
#NUMFILES=$(find $filesdir -maxdepth 2 -type f)
NUM_MATCH_LINES=$(grep -r "${searchstr}" $filesdir | wc -l)

echo -e "The number of files are $NUM_FILES and the number of matching lines are $NUM_MATCH_LINES."

# vim: tabstop=4 shiftwidth=4 expandtab
