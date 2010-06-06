#!/bin/sh
# microministatus - personal status in the shell.
#   useful for stuff like "staff meeting's coming... what
#   did i do this week? oh yeah, i can just
#   skim my statuses."
#   this script just writes. to read, just use your $PAGER or text editor.

#
# configuration
#
MMSLOG="$HOME/Desktop/mmslog.txt"

#
# do it
#
NOW=`date`
SEPARATOR="-------------------- $NOW"

echo "What are you doing? Just did? About to do? Etc."
read ANSWER
echo $SEPARATOR >> $MMSLOG
echo $ANSWER >> $MMSLOG

tail $MMSLOG
echo "\n(log location $MMSLOG)"

