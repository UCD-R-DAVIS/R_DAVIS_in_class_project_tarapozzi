# Goals: learn about mutate, group_by, and summarize
library(tidyverse)
surveys <- read_csv("data/portal_data_joined.csv")
str(surveys)


# Adding a new column
# mutate: adds a new column
surveys <- surveys %>%
  mutate(weight_kg = weight/1000)


# Add other columns


# Let's filter out the NA's


# Group_by and summarize ----
# A lot of data manipulation requires us to split the data into groups, apply some analysis to each group, and then combine the results
# group_by and summarize functions are often used together to do this

# we can calculate mean by certain groups
# group_by wokrs for columns with categorical variables 
surveys %>%
  group_by(sex) %>%
  summarize(mean_weight = mean(weight, na.rm = TRUE))

# multiple groups


# remove na's
surveys %>%
  filter(!is.na(weight) & !is.na(sex)) %>%
  group_by(sex, species_id) %>%
  summarise(mean_weight = mean(weight), 
            min_weight = min(weight)) %>%
  print(n=15) 



# Challenge
#What was the weight of the heaviest animal measured in each year? Return a table with three columns: year, weight of the heaviest animal in grams, and weight in kilograms, arranged (arrange()) in descending order, from heaviest to lightest. (This table should have 26 rows, one for each year)


#Try out a new function, count(). Group the data by sex and pipe the grouped data into the count() function. How could you get the same result using group_by() and summarize()? Hint: see ?n.
