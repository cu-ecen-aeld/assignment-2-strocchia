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

if [ ! -d "$1" ]
then
    echo -e "  finder.sh-->\t$1 is an invalid directory structure. exiting..."
    exit 1
fi

NUMFILES=$(ls $filesdir -1 | wc -l)
#NUMFILES=$(find $filesdir -maxdepth 2 -type f)

echo -e "The number of files are $NUMFILES and the number of matching lines are $NUMFILES"

# vim: tabstop=4 shiftwidth=4 expandtab
