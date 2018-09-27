library(dslabs)
library(dplyr)
library(tidyverse)
data(gapminder)

p <- gapminder %>% filter(year %in% c("1960","2010")) %>% 
+     ggplot(aes(fertility,infant_mortality,color=continent)) +
+     geom_point() +
+     facet_grid(.~year) +
+     xlab("Fertility (childs per family)") +
+     ylab("Infant mortality (Deaths per 1000)") +
+     ggtitle("Evolution between Fertility and Child Mortality in the World") +
+     labs(colour="Continents")
