#tidytuesday 29012019
library(tidyverse)

importfile<-"tidytues2019/tt_jan19/tt_29012019/clean_cheese.csv"
exportfile<-"tidytues2019/tt_jan19/tt_08012019/29012019.pdf"

chdata <- read_csv(importfile)
chdata

ggplot(data = chdata) +
  geom_line(mapping = aes(x=Year,y=Cheddar), colour="deepskyblue3")+
  geom_line(mapping = aes(x=Year,y=Mozzarella), colour="deeppink3")+
  geom_line(mapping = aes(x=Year,y=`American Other`), colour="chocolate3")+
  geom_line(mapping = aes(x=Year,y=`Italian other`), colour="chocolate3")+
  scale_y_continuous()

ggsave(exportfile)
