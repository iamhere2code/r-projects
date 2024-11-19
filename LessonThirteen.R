library(tidyverse)
library(tibble)
library(dplyr)
library(datasets)

trees <- trees %>%
  mutate(id = row_number())
#cbind(trees, datafram(id = row_number()))
#trees$id <- row_number

# Pivot longer: Convert wide format to long format
trees2 <- pivot_longer(
  data = as_tibble(trees),
  cols = c(Girth, Height, Volume),
  names_to = "Measurements",
  values_to = "Values"
)

# Pivot wider: Convert long format to wise format
trees3 <- pivot_wider(
  data = pivot_wider
)

# selecting only a few columns


pollution
pivot_wider(pollution, names_from = "size", values_from = "amount")

pollution2 <- pollution2
pollution2[1,1] <- "NYC"
pollution2

pivot_wider(pollution2, names_from = "size", values_from = "amount")

#BASE PLOTTING
#High level vs lowlevel plotting functions

p <- hist(
  trees$Girth,
  breaks = 10,
  freq = FALSE,
  xlim = c(5, 25),
  density = 50,
  col = c("blue", "goldenrod", "pink"),
  xlab = "Girth of Black Cherry Trees",
  main = "Histogram of Girth\nof Black Cherry Trees"
)
p #can save graphs of options
#Matrix input
library(ggplot2)
data(diamonds)
diamonds_table <- with(diamonds, table(cut, color))
diamonds_table
barplot(diamonds_table)
barplot(diamonds_table, beside = TRUE)
barplot(diamonds_table, legend = TRUE, density = 40, col= 1:5)

#low level fucntions
plot(Girth ~ Height, data = trees) #Girth ~ Height = y axis, x axis
points(c(65, 70, 75), c(12, 17, 20), pch = 6, col = "red", cex = 1.5)

coords_mat <- cbind(c(65, 70, 75), c(12, 17, 20))
plot(Girth ~ Height, data = trees)
points(coords_mat, type = "b", pch = 94, col = "purple", cex = 1.5)
lines(coords_mat, col = "green")

plot(Girth ~ Height, data = trees)
lines(Girth ~ Height, data = trees[volume_index, ], col = "green", lty = 2, lwd = 3)

hist(trees$Girth, prob= TRUE)
lines(density(trees$Girth), lwd = 2, col= "blue")

plot((1:10)^2, xlim = c(0, 10)) #increase ylim to fit text
abline(h = seq(0, 100, by = 20), lty = 2, col = "blue")
text(4, 25, "y==x^2")

#ablines to plot vertical and horizontal lines
plot((1:10)^2, xlim = c(0, 10))
avline(0, 10, col = "red")


#regression lines
lm_trees <- lm(Girth ~ Height, data = trees)
lm_trees
plot(Girth ~ Height, data = trees, pch = 21, bg = "grey")
# Superimpose the regression line
abline(lm_trees, col = "blue")
summarylm_trees)

#points(x, y, type = "l) is the same as lines(x,y)
#points(x, y, type = "p) is the same as points(x, y)

# Add histogram
with(diamonds, hiset(depth[cut = "Ideal"],
                     prob = TRUE
                     ))

#LOCATOR
plot(Girth ~ Height, data = trees)
locator(2)
