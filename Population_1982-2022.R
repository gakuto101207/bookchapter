#This code was used on 2022-10-3 to perform the analyses reported in:
#Chiba, G., Savage, P. E. Traditional folk music in contemporary Japan: Case studies of standardization and diversification in Tsugaru shamisen and folk song.

library(ggplot2)
library(ggsci)

x <- data.frame(
  Year = c("1982","1982","2022","2022"),
  Organi = c("Other/independent performers","Nihon Kyodo Minyo Kyokai and/or Nihon Minyo Kyokai"),
  Num = c(40000,80000,10000,16000),
  Num2 = c(100000,40000,21000,8000)
)

x$Organization <- factor(x$Organi, levels = c("Other/independent performers","Nihon Kyodo Minyo Kyokai and/or Nihon Minyo Kyokai"))

g <- ggplot(x, aes(x = Year, y = Num, fill = Organization)) + 
  geom_bar(stat = "identity") + 
  scale_fill_manual(values = c("#69B5D5","#E86560")) + 
  geom_text(aes(label = Num, y = Num2), size = 3) + 
  ylab("Estimated population of Tsugaru shamisen and folk song performers")

plot(g)
