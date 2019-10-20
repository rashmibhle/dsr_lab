library(ggplot2)
library(gcookbook)
cabbage_exp

ggplot(cabbage_exp, aes(x=Date, y = Weight, fill = Cultivar))+
  geom_bar(stat = "identity",position="dodge")