###load
install.packages("lubridate")
install.packages("ggplot2")
install.packages("data.table")
install.packages("ggrepel")
install.packages("dplyr")
install.packages("data.table")
install.packages("tidyverse")

library(ggplot2)

library(readxl)
df_res <- read_excel("~/Documents/GitHub/TERPcravingz/Tables/12.02 Updated Tables/Restaurant_12.2.xlsx", 
                              sheet = "Restaurant", col_types = c("text", "text", "text", "text", "text", "text", 
                                                                  "text", "numeric", "numeric", "numeric", 
                                                                  "numeric", "numeric", "text", "text", 
                                                                  "text", "text", "text", "text", "text", 
                                                                  "text", "text", "text", "text", "text", 
                                                                  "text", "text", "text", "text", "numeric"))
##View(df_res)  

##df_res<-df_res[!(df_res$resTransactionType=="none"),]




TransactionDummy<- model.matrix(~df_res$resTransactionType+0, data = df_res )
StateDummy <- model.matrix(~df_res$resState+0, data = df_res)
df_res <-data.frame(df_res,TransactionDummy, StateDummy)

colnames(df_res)[30:36] <- c("DC", "MD", "VA", "Delivery", "None", "Pickup", "Reservation")


reg<-lm(resStars~ resRevCNT +resPrice + DC+ MD + Delivery + Pickup + Reservation, data =df_res)
summary(reg)

plot(df_res$resPrice, df_res$resRevCNT)

heatmap()