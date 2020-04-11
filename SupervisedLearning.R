# S.Ravichandran
# ML for kids, 04/11/2020

# load a mock house sq-feet data
SqFeet <- c(150,200,250,300,350,400)

# load a mock house price data
Price  <- c(6450,7450,8450,9450,11450,15450)

# load the library for plotting
libary(tidyverse)

# plot the data
attach(df)
plot(SqFeet, Price, main = "Sq-Feet vs Price", 
     xlab = "Sq-Feet", ylab = "Price", col = "darkred", cex = 1.1)


# create a linear model
model = lm(Price ~ SqFeet, df)

# display the model
model

abline(model, col = "darkgreen")

# see the slope = 33.14 
# and Intercept is 669.05 

# let us make a prediction 

newdata = data.frame(SqFeet = c(325))

predict(model, newdata = newdata)

abline(v = 325, col="red", lwd=3, lty=2)
abline( h = 11440.48, col = "blue", lwd=2, lty = 4)
