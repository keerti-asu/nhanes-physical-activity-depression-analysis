
# NHANES Physical Activity and Depression Analysis

# Install and load required packages
install.packages("NHANES")
library(NHANES)
library(dplyr)
library(ggplot2)

# Load dataset
data("NHANES")

# Create binary depression variable
NHANESnew <- NHANES %>%
  mutate(Depression = ifelse(is.na(Depressed), NA,
                             ifelse(Depressed %in% c("Several","Most"), "Yes", "No")))

# Filter adults and remove missing values
NHANESnew <- NHANESnew %>%
  filter(Age >= 18) %>%
  filter(!is.na(Depression)) %>%
  filter(!is.na(PhysActive))

# Physical activity summary table
my_table <- table(NHANESnew$PhysActive, dnn = "Physical Activity")
addmargins(my_table)
round(prop.table(my_table), 2)

# Depression summary table
my_table2 <- table(NHANESnew$Depression, dnn="Depression")
addmargins(my_table2)
round(prop.table(my_table2), 2)

# Contingency table
my.ctable <- table(NHANESnew$PhysActive,
                   NHANESnew$Depression,
                   dnn=c("Physical Activity","Depression"))

addmargins(my.ctable)
round(prop.table(my.ctable), 2)

# Bar plot (counts)
NHANESnew %>%
  ggplot(aes(x = PhysActive, fill = Depression)) +
  geom_bar(position="dodge") +
  labs(
    title="Relationship Between Physical Activity and Depression",
    x="Physical Activity",
    fill="Depression"
  ) +
  theme_bw()

# Proportional bar plot
NHANESnew %>%
  ggplot(aes(x = PhysActive, fill = Depression)) +
  geom_bar(position="fill") +
  labs(
    title="Relationship Between Physical Activity and Depression",
    x="Physical Activity",
    y="Proportion",
    fill="Depression"
  ) +
  theme_minimal()

# Chi-square test
chisq.test(my.ctable)
