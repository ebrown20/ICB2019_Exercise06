setwd("/Users/patriciabrown/BioComp/Exercise06/ICB2019_Exercise06")
# Loading file into R (file does have a header)
dat <- read.csv(file = "iris.csv", header = TRUE, sep = ",")

# Print the last two rows in the last two columns to the R terminal
print(dat[(nrow(dat)-1):nrow(dat),(ncol(dat)-1):ncol(dat)])

# Count the number of observations for each species in iris.csv

# Extracts just the column with the species names in it
species_dat <- dat$Species

# Sets all initial counts to zero
num_setosa <- 0
num_versicolor <- 0
num_virginica <- 0

#Loops through all of the species listed and adds counts appropriately
for(line in species_dat) {
  if (line == "setosa") {
    num_setosa <- num_setosa + 1
  }
  if(line == "versicolor") {
    num_versicolor <- num_versicolor + 1
  }
  if(line == "virginica") {
    num_virginica <- num_virginica + 1
  }
}

# Print counts to user
print("Number of Species:")
output_setosa <- c("Number of setosa: ",num_setosa)
print(output_setosa)
output_versicolor <- c("Number of versicolor: ",num_versicolor)
print(output_versicolor)
output_virginica <- c("Number of virginica: ",num_virginica)
print(output_virginica)

# Get rows with sepal.width > 3.5
print("Rows with Sepal.Width > 3.5: ")
dat[dat[ ,2]>3.5, ]

# Write the data for the species setosa to a comma delimited file named "setosa.csv"
setosa_dat <- dat[dat[ ,5] == "setosa", ]
write.csv(setosa_dat, file = "setosa.csv", row.names=FALSE)

# Calculate the mean, minimum, maximum, of Petal.Length for observations from virginica
virginica_dat <- dat[dat[ ,5] == "virginica", 3]
print("Mean of Petal.Length for virginica: ")
print(mean(virginica_dat))
print("Minimum of Petal.Length for virginica: ")
print(min(virginica_dat))
print("Maximum of Petal.Length for virginica: ")
print(max(virginica_dat))


