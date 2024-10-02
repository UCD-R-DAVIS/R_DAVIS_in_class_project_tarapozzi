# How R thinks about data -----

## Vector and data types ----
weight <- c(50, 73, 47, 2)
weight

## vector with text
animals <- c("mouse", "horse", "rat")
animals










### additional functions ----
class(weight)
class(animals)
length(weight)
length(animals)

str(weight)






## change vector -----
weight <- c(weight, 90) # adds to the end of the vector
weight

weight <- c(3, weight)
weight
