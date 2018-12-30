
 cat seq_only/A2_S6_R1_001.fastq.gz.seq.txt | head -1 | grep -E '^G.{3}T' -m1 
 
 cat A2_S6_R1_001.fastq.gz.seq.txt | grep "***" > fixed_seq

 cat Q_S4_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | wc -l

# count unique reads
cat A1_S5_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | wc -l  
cat A2_S6_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | wc -l
cat A3_S7_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | wc -l
cat P_S8_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | wc -l
cat Q_S4_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | wc -l
cat T1_S1_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | wc -l
cat T2_S2_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | wc -l
cat T3_S3_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | wc -l
 
 
# extract unique reads 
cat A1_S5_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/A1_S5_R1.txt
cat A2_S6_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/A2_S6_R1.txt
cat A3_S7_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/A3_S7_R1.txt
cat P_S8_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/P_S8_R1.txt
cat Q_S4_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/Q_S4_R1.txt
cat T1_S1_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/T1_S1_R1.txt
cat T2_S2_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/T2_S2_R1.txt
cat T3_S3_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/T3_S3_R1.txt
cat I_S9_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG" | uniq -u | cut -c4-73 > random/I_S9_R1.txt
   
cat T3_S3_R1_001.fastq.gz.seq.txt | grep "^GTA" | grep "GTGCCACCTGATGCGG"  | sort | uniq -c | sort -n | grep -w "2" | wc -l 

 cat A1_S5_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/A1_S5_R1_stats.txt
 cat A2_S6_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/A2_S6_R1_stats.txt
 cat A3_S7_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/A3_S7_R1_stats.txt
 cat P_S8_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/P_S8_R1_stats.txt
 cat Q_S4_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/Q_S4_R1_stats.txt
 cat T1_S1_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/T1_S1_R1_stats.txt
 cat T2_S2_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/T2_S2_R1_stats.txt
 cat T3_S3_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/T3_S3_R1_stats.txt
 cat I_S9_R1.txt | sort | uniq -c | awk '{print $1}' | sort | uniq -c | sort -nr > stats/I_S9_R1_stats.txt
 
 # convert them back to fasta
 awk '{print ">" NR; print $0}' sequencefile.txt
