'''Summary:

'''

mat <- cbind(c(62, 71, 66), c(115, 201, 119), c(4000, NA, 2000))
colnames(mat) <- c("Height", "Weight", "Income")
rownames(mat) <- c("Mas", "George", "Milton")
mat

df <- data.frame(
  "Name" = c("Sam", "George", "Milton"), "Height" = c(62, 71, 66),
  "Weight" = c(115, 201, 119), "Income" = c(4000, NA, 2000)
)
#data frames allow for different data types in a table

df
mat
#functions that work for matrix also work for dataframes
dim(df)
dim(mat)
rownames(df) <- c("mastery with distinction", "b", "c")
rownames(df)
colnames(df)

#adding a new colum to the dataframe
df <- cbind(df, "IQ" = c(300, 45, 100)) # setting the basic values
donlemno <- data.frame("Name" = "donlemno", "Height" = 45, "Weight" = 194, "Income" = 5000, "IQ" = 1) #adding a new value to the df
rbind(df, donlemno) #adding the value in as a row

rbind(df, list("donlemno", 45, 194, 5000, 1)) 
df2 <- rbind(df, c("donlemno",45, 194, 5000, 1)) #implicit coercion that turns everything into a string
mode(df[2, 4]) #returns mode of selected things

df[-2, ] #negative index gives you everything except that position
df[-c(2:3), ]
df["Name"]
df[c(FALSE, TRUE, FALSE), 1]

df["Name"]
df[, "Name", drop=FALSE] #drop is for structure (will return a matrix)

mode(df)
df[["Height"]] #if you write the name of the column in double square brackets, you will get all the values in that column
df[[3]] #same thing as thing above

df[[3]][2] #2 is index of value you want to access in the 3rd column (2nd index of column 3)

df$Name #prints out all the values under names
df$Income

#with()
with(df, Height) #returns all values in height
with(df, Weight > 150) #returns whether values are above 150 or not (boolean)
with(df, mean(Weight))

#output all the ppl taller than 165cm

with(df, {
  heights_in_cm <- Height * 2.54
  tall <- heights_in_cm > 165
  Name[tall]
})

#modes and classes
mode[df] #stored as list
class(df) #class is dataframe
mode(mat) # stored as numeric
class(mat) # class is matrix

with(df, {
  weight_in_kilos <- Weight * 0.453592
  thing <- weight_in_kilos > 60
  Name[thing]
})

data(trees)
# find the number of trees with height > 70 AND volume < 15
with(trees, {
  thing <- Height > 70 & Volume < 15
  sum(thing)
})

?trees