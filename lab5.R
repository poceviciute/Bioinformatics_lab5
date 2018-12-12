## Question 1

#install.packages("devtools")
library(devtools)
#install_github("mategarb/R.ROSETTA")
library(R.ROSETTA)

## Question 2
View(autcon)
decision_sum <- table(autcon$decision)


## number of features = 36 -1 = 35

## For distribution:
control_ratio <- as.numeric(decision_sum[1])/146
autism_ratio <- as.numeric(decision_sum[2])/146

## Since controls and autism are nearly around 50% distributed thus the distribution is balanced


##Question 3

autconDefault = rosetta(autcon)

rules <- autconDefault$main
quality <- autconDefault$quality
quality


# a - Cross validation: Partition the data into equally sized subsets and perform model assesment.
## Rosetta performs 10 fold cross validation by default

nrow(autconDefault$main)
## Question 4

paste("Total number of rules : " ,nrow(rules))
paste("3 Most significant rules are:")
rules[(1:3),]

ind <- rules$PVAL < 0.05
sig_rules <- rules$DECISION[ind]
class_control <- length(which(sig_rules == "control"))
class_autism <- length(which(sig_rules == "autism"))

paste("Number of significant rules for class control : " ,class_control)

paste("Number of significant rules for class autism : " ,class_autism)

saveLineByLine(rules = rules, "rules.txt")



## Question 5
