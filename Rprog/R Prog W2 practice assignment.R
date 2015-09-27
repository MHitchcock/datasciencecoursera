dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")

weightmedian <- function(directory, day) {
  +           files_list <- list.files(directory, full.names=TRUE)
  +           dat <- data.frame()
  +             for (i in 1:5) {
    +               dat <- rbind (dat, read.csv(files_list[i]))
    +             }
  +             dat_subset <- dat[which(dat[, "Day"]==day),]
  +             median(dat_subset[, "Weight"], na.rm=TRUE])
}
  
for (i in 1:5) {
        dat <- rbind(dat, read.csv(files_full[i]))
}

> weightmedian <- function(directory, day) {
  +           files_list <- list.files(directory, full.names=TRUE)
  +           dat <- data.frame()
  +             for (i in 1:5) {
    +               dat <- rbind (dat, read.csv(files_list[i]))
    +             }
  +             dat_subset <- dat[which(dat[, "Day"]==day),]
  +             median(dat_subset[, "Weight"], na.rm=TRUE])
}

