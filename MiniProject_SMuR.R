# Load required libraries
library(ggplot2)

# Step 1: Load the dataset
data(mtcars)
head(mtcars)

# Step 2: Explore the Data
# Scatter plot between predictor (x) and target (y)
ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point() +
  labs(x = "Miles per Gallon (mpg)", y = "Horsepower (hp)",
       title = "Scatter Plot of Horsepower vs. Miles per Gallon")

# Step 3: Fit a Linear Regression Model
model <- lm(hp ~ mpg, data = mtcars)

# Step 4: Assess Model Fit
# Diagnostic plots
par(mfrow=c(2,2))
plot(model)

# Step 5: Make Predictions
# For example, predict horsepower for a car with 25 mpg
new_data <- data.frame(mpg = 25)
predicted_hp <- predict(model, newdata = new_data)
cat("Predicted Horsepower for 25 mpg:", predicted_hp)
