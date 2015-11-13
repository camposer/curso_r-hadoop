movies <- read.csv("~/movies-lines2000.txt", sep="|", quote="")

#hist(movies$score)

#library(ggplot2)
#qplot(time, data = movies, geom="density")

scoreStatsByProductId <- function() {
	products <- levels(movies$productId)

	# this solves the problem, but it's very inefficient!
	# better to do a simple loop and calculate
	result <- sapply(products, function(productId) {
		avg <- mean(movies$score[movies$productId == productId])
		min <- min(movies$score[movies$productId == productId])
		max <- max(movies$score[movies$productId == productId])

		print(paste("productId", productId, "avg", avg, "min", min, "max", max))	
	})
}

scoreStatsByProductId()
