#! /usr/bin/env Rscript

# You can also set locale with a environment variable, e.g. export LC_ALL=C
locale <- Sys.setlocale(category = "LC_ALL", locale = "C") # for strsplit

key <- ""
score <- 0
count <- 0
min <- 99999
max <- 0

con <- file("stdin", open="r")
while(length(line <- readLines(con, n=1)) > 0) {
	data <- strsplit(line, "\t")

	tmpkey <- sapply(data, function(x) x[1])
	rawScore <- sapply(data, function(x) as.numeric(x[2]))

	score <- score + rawScore
	count <- count + sapply(data, function(x) as.numeric(x[3]))
	if (rawScore < min) 
		min <- rawScore
	if (rawScore > max)
		max <- rawScore

	if (tmpkey != key) {
		if (key != "") {
			write(paste(key, score, count, min, max, sep="\t"), stdout())
			score <- 0
			count <- 0
			min <- 99999
			max <- 0
		}

		key <- tmpkey
	}
}
close(con)

# printing values for last product
write(paste(key, score, count, min, max, sep="\t"), stdout())
