'''Summary
- Dataframes
- CBind
- Calling dataframes abd matrices
- Rbind
'''


#Dataframes

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