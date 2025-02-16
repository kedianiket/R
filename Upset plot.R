install.packages("UpSetR")  # Install the package if not already installed
library(UpSetR)  # Load the package


movies <- data.frame(
  Movie = c("Movie1", "Movie2", "Movie3", "Movie4", "Movie5", "Movie6"),
  Action = c(1, 0, 1, 0, 1, 0),
  Adventure = c(1, 1, 0, 0, 1, 1),
  Drama = c(0, 1, 1, 1, 0, 0),
  Romance = c(0, 1, 1, 1, 0, 0),
  Thriller = c(1, 0, 0, 1, 0, 1),
  Horror = c(0, 0, 0, 1, 1, 1)
)


upset(movies, sets = c("Action", "Adventure", "Drama", "Romance", "Thriller", "Horror"),
      sets.bar.color = "blue", order.by = "freq")


upset(movies, sets = c("Action", "Adventure", "Drama", "Romance", "Thriller", "Horror"),
      sets.bar.color = "blue", order.by = "degree")


upset(movies, sets = c("Action", "Adventure", "Drama", "Romance", "Thriller", "Horror"),
      show.numbers = "yes", order.by = "freq")


upset(movies, sets = c("Action", "Adventure", "Drama", "Romance", "Thriller", "Horror"),
      sets.bar.color = "red", order.by = "freq")

