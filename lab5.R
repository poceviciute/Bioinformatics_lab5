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

## Question 4

saveLineByLine(rules = rules, "rules.txt")

## Question 5
