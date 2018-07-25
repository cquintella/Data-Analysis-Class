library(mosaic)
library(dpylr)
iris %>% 
  group_by(Species) %>% 
  mutate(zSepal.Length = zscore(Sepal.Length)) %>% 
  head()
