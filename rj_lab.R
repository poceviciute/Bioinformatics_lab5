#question 1

library(devtools)
library(R.ROSETTA)


#question 2
#load a data
data = autcon

#number of object in each class
object_counts = table(data$decision)

#number of feature
features = ncol(data) - 1

paste("percentage of object in control = ", (as.numeric(object_counts)[1] / nrow(data)) * 100)
paste("percentage of object in Autism = ",(as.numeric(object_counts)[2] / nrow(data)) * 100)

#The distribution of objects is nearly balanced 



#question 3
autconDefault = rosetta(data)
