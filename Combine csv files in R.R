library(dplyr)
library(readr)
df <- list.files(path="C:\\Users\\kedia\\Downloads\\rshiny", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows 

df 