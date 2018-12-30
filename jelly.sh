#!/bin/sh
for i in 4 5 6 7 8 9 10 11 12 13 14 15
do
jellyfish count -m $i -o A2/A2_$i.fasta -s 100000000 -t 10 A2_unique.fasta  
jellyfish dump A2/A2_$i.fasta_0 > A2/A2_mer_counts_$i.txt
done
