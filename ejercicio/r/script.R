movies <- read.csv("~/movies-lines2000.txt", sep="|", quote="")

#hist(movies$score)

#library(ggplot2)
#qplot()

promedio <- mean(movies$score)
menor <- min(movies$score)
mayor <- max(movies$score)

print(paste("promedio", promedio))
print(paste("menor", menor))
print(paste("mayor", mayor))

# Incluir por película mean(movies$score[movies$productId == "B0016OLXN2"])
