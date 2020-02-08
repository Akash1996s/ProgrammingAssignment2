complete <- function(directory, id = 1:332){
  filel <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
  nobs <- numeric()
  for (i in id) {
    dat <- read.csv(filel[i])
    nobs <- c(nobs, sum(complete.cases(dat)))
      }
  data.frame(id, nobs)
}
