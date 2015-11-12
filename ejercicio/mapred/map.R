#! /usr/bin/env Rscript

# You can also set locale with a environment variable, e.g. export LC_ALL=C
locale <- Sys.setlocale(category = "LC_ALL", locale = "C") # for strsplit
firstLine <- TRUE # for omitting header

con <- file("stdin", open="r")
while(length(line <- readLines(con, n=1)) > 0) {
	if (firstLine) {
		firstLine <- FALSE
		next
	}

	data <- strsplit(line, "|", fixed = TRUE)

	productId <- sapply(data, function(x) x[2])
	score <- sapply(data, function(x) x[6])
	count <- 1

	write(paste(productId, score, count, sep="\t"), stdout())
}
close(con)
