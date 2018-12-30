
library(data.table)

mer4_A1<- fread("./random_frag_analysis/unique_only/A1/mer_table_4_A1.txt")

mer4_I <- fread("./random_frag_analysis/unique_only/I/mer_table_4.txt")

mer5_I <- fread("./random_frag_analysis/unique_only/I/mer_table_5.txt")

mer5_A1 <- fread("./random_frag_analysis/unique_only/A1/mer_table_5.txt")

mer6_I <- fread("./random_frag_analysis/unique_only/I/mer_table_6.txt")

mer6_A1 <- fread("./random_frag_analysis/unique_only/A1/mer_table_6.txt")

mer8_I <- fread("./random_frag_analysis/unique_only/I/mer_table_8.txt")

mer8_A1 <- fread("./random_frag_analysis/unique_only/A1/mer_table_8.txt")

mer4_I$`A1 number` <- NULL

colnames(mer4_I)<- c("mer", "num")

colnames(mer4_A1)<- c("num", "mer")

colnames(mer5_I)<- c("num", "mer")

colnames(mer5_A1)<- c("num", "mer")

colnames(mer6_I)<- c("num", "mer")

colnames(mer6_A1)<- c("num", "mer")

colnames(mer8_I)<- c("num", "mer")

colnames(mer8_A1)<- c("num", "mer")

str(mer4_A1)

mer5_I2<- mer5_I[order(mer),]
mer5_A1_2<- mer5_A1[order(mer),]

mer5_I2$num <- mer5_I2$num/sum(mer5_I2$num)
mer5_A1_2$num <- mer5_A1_2$num/sum(mer5_A1_2$num)

plot(mer5_A1_2$num, mer5_I2$num)

mer6_I2<- mer6_I[order(mer),]
mer6_A1_2<- mer6_A1[order(mer),]

mer6_I2$num <- mer6_I2$num/sum(mer6_I2$num)
mer6_A1_2$num <- mer6_A1_2$num/sum(mer6_A1_2$num)

plot(mer6_A1_2$num, mer6_I2$num)

