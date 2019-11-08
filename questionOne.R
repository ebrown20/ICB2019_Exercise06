# Setting file to read from and number of lines to extract from the top
this_file <- "wages.csv"
num_lines <- 10L

# Loading file into R (file does have a header)
dat <- read.csv(file = this_file, header = TRUE, sep = ",")

# Extract the first num_lines rows of data from the file
first_n_rows <- dat[1:num_lines, ]

# Print to the terminal
print(first_n_rows)
