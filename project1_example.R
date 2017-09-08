dat_raw <- readLines("Status_Non_DoD_2009_03.txt")
dat_header <- read.csv("headers.csv", header = TRUE)
fun1 <- function(x){
	trimws(substring(x,dat_header[,2], dat_header[,3]))
}
dat <- t(sapply(dat_raw, fun1))

dimnames(dat) <- NULL
dat <- as.data.frame(dat)

colnames(dat) <- dat_header[,1]

summary(dat)
