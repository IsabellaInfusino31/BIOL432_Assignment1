setwd("/Users/isabellainfusino/Desktop") #sets the working directory

getwd() # confirm the working directory

MyData <- read.csv("measurements.csv") #reads in the dataset

library(dplyr) #adds library


# add column for volume (approximated to be the volume of a cone)
MyData <- MyData %>% 
  mutate( Volume = (1/3)*pi*((Limb_Width / 2)^2)*(Limb_Length))

MyData # view new data set

write.csv(MyData, file = "measurements.csv", row.names = FALSE)

#tettt