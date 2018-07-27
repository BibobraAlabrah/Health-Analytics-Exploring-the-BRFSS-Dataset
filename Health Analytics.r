
# Setup
# Load packages

library(ggplot2)
library(dplyr)

# Load data
load("brfss2013.RData")

# Check the data dimension
dim(brfss2013)

# View the first 3 rows
head(brfss2013, 3)

# What is the income level distribution?
brfss2013 %>%
filter(!is.na(income2), !is.na(sex)) %>%
ggplot(aes(x = income2, fill = sex)) +
geom_bar(stat = "count", position = position_dodge()) +
theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Display the summary stats
round(prop.table(table(brfss2013$income2, brfss2013$sex)), 2)

# Let us explore the checkup variable
brfss2013 %>%
filter(!is.na(checkup1)) %>%
ggplot(aes(x = checkup1)) +
geom_bar(stat = "count", width = 0.5, fill = "steelblue") +
theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Let us see the numbers
round(prop.table(table(brfss2013$checkup1)), 2)

# Let us take a look at the marital status variable
brfss2013 %>%
filter(!is.na(marital), !is.na(sex)) %>%
ggplot(aes(x = marital, fill = sex)) +
geom_bar(width = 0.7, stat = "count") +
theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Let us pull up the summary statistics
round(prop.table(table(brfss2013$marital)), 2)

# let us explore the education level of the respondents
round(prop.table(table(brfss2013$educa)), 2)

brfss2013 %>%
filter(!is.na(educa), !is.na(sex)) %>%
ggplot(aes(x = educa, fill = sex)) +
geom_bar(stat = "count", width = 0.5) +
theme(axis.text.x = element_text(angle = 45, hjust = 1))

# The employment variable might play a in depression disorder. Let us explore this feature
round(prop.table(table(brfss2013$employ1, brfss2013$sex)), 2)

brfss2013 %>%
filter(!is.na(employ1), !is.na(sex)) %>%
ggplot(aes(x = employ1, fill = sex)) +
geom_bar(stat = "count") +
theme_minimal() +
theme(axis.text.x = element_text(angle = 45, hjust = 1))

brfss2013 %>% 
    filter(!is.na(cvdinfr4), !is.na(checkup1)) %>%
    group_by(cvdinfr4, checkup1) %>% 
    summarise(count = n())

# cvdinfr4 stands for "Ever Diagnosed With Heart Attack?"

brfss2013 %>%
filter(!is.na(cvdinfr4), !is.na(checkup1)) %>%
ggplot(aes(x = cvdinfr4)) +
geom_bar(fill = "steelblue", stat = "count") + 
facet_wrap(~ checkup1) + 
theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Let us now look at the no money to pay for meds variable.
brfss2013 %>% 
filter(!is.na(cvdinfr4)) %>%
group_by(cvdinfr4, medscost) %>% 
summarise(count = n())

brfss2013 %>%
filter(!is.na(cvdinfr4), !is.na(sex), !is.na(medscost)) %>%
ggplot(aes(x = cvdinfr4, fill = sex)) +
geom_bar(stat = "count") + 
facet_wrap(~ medscost) + 
theme(axis.text.x = element_text(angle = 45, hjust = 1))

# effects of education level on those who had depression disorder
brfss2013 %>% 
    filter(addepev2 == 'Yes', !is.na(educa)) %>%
    group_by(addepev2, educa) %>% 
    summarise(count = n())

brfss2013 %>%
filter(!is.na(addepev2), !is.na(income2)) %>%
group_by(income2) %>%
ggplot(aes(x = addepev2)) +
geom_bar(stat = "count", fill ="steelblue") +
facet_wrap(~ income2, ncol = 4)

# What impact does employment status has on depression disorder?

brfss2013 %>%
filter(!is.na(addepev2), !is.na(employ1), !is.na(sex)) %>%
group_by(employ1) %>%
ggplot(aes(x = addepev2, color = "lightgrey")) +
geom_bar(stat = "count", width = 0.5) +
facet_wrap(~ employ1, ncol = 4)

brfss2013 %>% 
filter(!is.na(cvdinfr4), !is.na(employ1)) %>%
group_by(cvdinfr4, employ1) %>% 
summarise(count = n())

# Finally, let us explore the relationship between marital status and depression cases.

brfss2013 %>% 
filter(!is.na(addepev2), !is.na(marital)) %>%
ggplot(aes(x = addepev2, fill = marital)) +
  geom_bar(stat = "count", position = position_dodge()) 

# Which gender suffered more dispression disorder?

brfss2013 %>% 
filter(!is.na(addepev2), !is.na(sex), !is.na(marital)) %>%
ggplot(aes(x = addepev2, fill = sex)) +
geom_bar(stat = "count", position = position_dodge(), width = 0.5) +
facet_wrap(~ marital)
