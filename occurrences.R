
library(data.table)
library(ggplot2)

I_S9_R1<- fread("stats/I_S9_R1_stats.txt", header = FALSE)
A1_S5_R1<- fread("stats/A1_S5_R1_stats.txt", header = FALSE)
A2_S6_R1<- fread("stats/A2_S6_R1_stats.txt", header = FALSE)
A3_S7_R1<- fread("stats/A3_S7_R1_stats.txt", header = FALSE)
P_S8_R1<- fread("stats/P_S8_R1_stats.txt", header = FALSE)
Q_S4_R1<- fread("stats/Q_S4_R1_stats.txt", header = FALSE)
T1_S1_R1<- fread("stats/T1_S1_R1_stats.txt", header = FALSE)
T2_S2_R1<- fread("stats/T2_S2_R1_stats.txt", header = FALSE)
T3_S3_R1<- fread("stats/T3_S3_R1_stats.txt", header = FALSE)



stats_data<- rbind(I_S9_R1,A1_S5_R1, A2_S6_R1, A3_S7_R1, P_S8_R1, Q_S4_R1, T1_S1_R1, T2_S2_R1, T3_S3_R1  )

stats_data$sample<- c(rep("I_S9_R1",length(I_S9_R1$V1)),rep("A1_S5_R1",length(A1_S5_R1$V1)),rep("A2_S6_R1",length(A2_S6_R1$V1)),rep("A3_S7_R1",length(A3_S7_R1$V1)), rep("P_S8_R1",length(P_S8_R1$V1)),  rep("Q_S4_R1",length(Q_S4_R1$V1)), rep("T1_S1_R1",length(T1_S1_R1$V1)),rep("T2_S2_R1",length(T2_S2_R1$V1)),rep("T3_S3_R1",length(T3_S3_R1$V1)))


stats_data$number<- stats_data$V1 * stats_data$V2




#scale_y_continuous(limits = c(0, 3e+5), expand = c(0, 0))+
 # labs(x = "number of times a sequence is found in the dataset") +


  p <- ggplot(aes(x = V2, y = number), data = stats_data) +
  geom_bar(stat = "identity" ) +
 labs(x = "number of occurrences of a sequence in the dataset", y = "number of reads with a given occurrences") +
 facet_wrap(~sample, scales = "free") +
  theme(plot.margin=unit(c(1,1,1,1),"cm"),
        legend.position = "bottom",
        panel.grid.minor = element_line(colour="white", size=0.5),
        plot.title = element_text(size = 18, face = "bold", hjust = 0.5),
        axis.text  = element_text(size=18),
        axis.title = element_text(size = 18, face = "bold")) 



file_name = paste("stats_fixed","tiff", sep=".")
tiff(file_name, width = 1400, height = 800, units = "px")
print(p)
dev.off()







