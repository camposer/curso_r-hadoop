#! /usr/bin/env Rscript

con <- file("stdin", open="r")
firstLine <- TRUE # for omitting header
while(length(line <- readLines(con, n=1)) > 0) {
	if (firstLine) {
		firstLine <- FALSE
		next
	}

	data <- strsplit(line, "|", fixed = TRUE)
	productId <- sapply(data, function(x) x[2])
	score <- sapply(data, function(x) x[6])

	write(paste(productId, score, sep="\t"), stdout())
}
close(con)
