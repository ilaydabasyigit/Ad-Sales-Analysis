# Project: Linear Regression Analysis of Ad Expenditure and Sales
# Author: İlayda Başyiğit
# Date: 9 August 2025

# This script performs a linear regression analysis to determine the relationship
# between a company's advertising expenditure and its sales figures.

# Step 1: Create the data set
ad_expenditure <- c(10, 15, 20, 25, 30, 35, 40) # In thousand dollars
sales <- c(50, 65, 70, 85, 90, 100, 115) # In thousand units
data_frame <- data.frame(ad_expenditure, sales)

# Check the created data frame
print(data_frame)

# Step 2: Data Visualization (Scatter Plot)
# Note: You only need to run install.packages("ggplot2") once.
# install.packages("ggplot2")
library(ggplot2)

ggplot(data_frame, aes(x = ad_expenditure, y = sales)) +
  geom_point() +
  labs(title = "Relationship Between Ad Expenditure and Sales",
       x = "Ad Expenditure (Thousand $)",
       y = "Sales (Thousand Units)")

# Step 3: Create the Linear Regression Model
regression_model <- lm(sales ~ ad_expenditure, data = data_frame)

# Step 4: Examine the Analysis Results
summary(regression_model)