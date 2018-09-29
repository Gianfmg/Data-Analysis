library(dplyr)
library(ggplot2)
cities = c("Atlanta, GA","Baltimore, MD", "Boston, MA", 
           "Calgary, Alberta", "Freehold, NJ","Jersey City, NJ",
           "Minneapolis, MN", "Moorestown, NJ", "Morgantown, WV", 
           "New York, NY", "Philadelphia, PA", "San Fransisco, CA", 
           "Syracuse, NY", "Toronto, Ontario", "Washington, DC", "Woodbridge, NJ")
states=c("GA","MD", "MA", 
         "Alberta", "NJ","NJ",
         "MN", "NJ", "WV", 
         "NY", "PA", "CA", 
         "NY", "Ontario", "DC", "NJ")
no_trees = c(34,32,20,81,17,27,27,26,37,29,23,18,24,31,19,31)
df=data.frame(cities=cities,noftrees=no_trees,states=states)

df %>% ggplot(aes(cities, noftrees)) +
  theme_minimal() +
  geom_point() + 
  theme(axis.text.x=element_text(angle=90,hjust=1)) +
  ggtitle("Number of trees needed to offset oxygen consumption of one adult human")+
  xlab("Cities")+
  ylab("Number of trees")
