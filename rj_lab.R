#question 1

install.packages("devtools") 
library(devtools) 
install_github("mategarb/R.ROSETTA",force = TRUE) 
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
table_main = autconDefault$main

quality = autconDefault$quality



#cross validation is partition the data into equally sized subsets.
#default cross validatin Rosetta applies 10 Fold.



#What is the default reduction method? 
#default is johnson 
#it is used for reducts in a way to finding dependencies in the data.

#What is the default method of discretization? 
#Describe it shortly. How many discretization bins are calculated?
#default method is equal frequene 


autconDefault$quality$Accuracy.Mean
a =autconDefault$main[(1:3),]
a$PVAL < 0.05

saveLineByLine(autconDefault$main,"rules_rj.txt")
