library(rmr2)

# You need to set locale with a environment variable, e.g. export LC_ALL=C

movies.mapred.map <- function(k,v) {
	data <- strsplit(v, "|", fixed = TRUE)

	productId <- sapply(data, function(x) x[2])
	score <- sapply(data, function(x) as.numeric(x[6]))

	keyval(productId, paste(score, 1, sep="\t"))
}

movies.mapred.reduce <- function(k, v) {
	data <- strsplit(v, "\t")

	score <- sapply(data, function(x) as.numeric(x[1]))
	count <- sapply(data, function(x) as.numeric(x[2]))

	keyval(k, paste(sum(score) / sum(count), min(score), max(score)))
}

movies.mapred.result <- mapreduce(
	input = "movies-lines2000.txt", # change this path as needed
	map = movies.mapred.map,
	combine = NULL,
	reduce = movies.mapred.reduce,
	input.format = "text",
	output.format = "csv")

result = from.dfs(movies.mapred.result, format = "csv")

print(result)
