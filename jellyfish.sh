#!/bin/sh
for i in 4 5 6 7 8 9 10 11 12 13 14 15
do
cat A2_mer_counts_$i.txt | sed 'N;s/\n/ /' | cut -c 2- > mer_table_$i.txt
done
