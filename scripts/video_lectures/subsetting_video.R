# Subsetting -----
animals <- c("mouse", "rat", "dog", "cat")
animals[2]

animals[c(2,3)]


animals[c(2,3,2,3,2,3)]


## Logical vector subsetting
weight <- c(14, 76, 81, 25, 46)
weight[c(TRUE, TRUE, FALSE, FALSE, FALSE)]
weight[weight > 50]
weight > 50

# multiple tests
weight[weight > 50 | weight < 20]
# AND --> &
# other symbols
weight[weight >= 46]


## %in%
animals
animals %in% c("duck", "horse", "frog", "mouse", "rat", "goat")
