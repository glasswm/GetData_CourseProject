#function definition - get descriptive activity names
getActivity <- function(x) {
  activity <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
  res <- c()
  for (i in x) {
    res <- c(res, activity[i])
  }
  res
}

#read raw data
x_train <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE, stringsAsFactors=FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE, stringsAsFactors=FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE, stringsAsFactors=FALSE)
x_test <- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE, stringsAsFactors=FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE, stringsAsFactors=FALSE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE, stringsAsFactors=FALSE)

#merge data
train <- cbind(subject_train, y_train, x_train)
test <- cbind(subject_test, y_test, x_test)
data <- rbind(train, test)

#extract only the measurements on the mean and standard deviation
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
mean_std <- c(grep("mean\\(\\)", features$V2), grep("std\\(\\)", features$V2))
mean_std <- mean_std + c(2)
mean_std <- c(1, 2, mean_std) 
mean_std <- sort(mean_std)
data <- data[mean_std]

#uses descriptive activity names to name the activities in the data set
data[,2] <- getActivity(data[,2])

#labels the data set with descriptive variable names
names <- c("subject", "activity", features$V2)[mean_std]
colnames(data) <- names

#creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
tt <- aggregate(data[,3:68], list(data$subject, data$activity), mean)
names(tt)[1:2] = c("subject", "activity")
write.table(tt, file="res.txt", quote=FALSE, row.names=FALSE)
