### Instuctions
- Download the [Human Activity Recognition Using Smartphones data set](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extract. Suppose you get the __xxx/UCI HAR Dataset__ directory.   
- Download the [run_analysis.R](run_analysis.R) script to the same directory __xxx__.
- Change current directory to the __xxx__.
- Run `Rscript run_analysis.R`
- The tidy dataset should get created in the current directory as `res.txt`
- Code book for the tidy dataset is available [here](CodeBook.md)


### analysis of the run_analysis.R script 

1. The script first define a function to get descriptive activity names.  
eg.  
&nbsp;&nbsp; input:  (1, 3, 2)  
&nbsp;&nbsp; output: ("WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS")
```{r}
getActivity <- function(x) {
  activity <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
  res <- c()
  for (i in x) {
    res <- c(res, activity[i])
  }
  res
}
```

2. read raw data
```{r}
x_train <- read.table("respo/GetData_CourseProject/UCI HAR Dataset/train/X_train.txt", header=FALSE, stringsAsFactors=FALSE)
y_train <- read.table("respo/GetData_CourseProject/UCI HAR Dataset/train/y_train.txt", header=FALSE, stringsAsFactors=FALSE)
subject_train <- read.table("respo/GetData_CourseProject/UCI HAR Dataset/train/subject_train.txt", header=FALSE, stringsAsFactors=FALSE)
x_test <- read.table("respo/GetData_CourseProject/UCI HAR Dataset/test/X_test.txt", header=FALSE, stringsAsFactors=FALSE)
y_test <- read.table("respo/GetData_CourseProject/UCI HAR Dataset/test/y_test.txt", header=FALSE, stringsAsFactors=FALSE)
subject_test <- read.table("respo/GetData_CourseProject/UCI HAR Dataset/test/subject_test.txt", header=FALSE, stringsAsFactors=FALSE)
```

3. use cbind to bind the subject person, activity label and the observation.  
use rbind to bind the train data and test data.
```{r}
train <- cbind(subject_train, y_train, x_train)
test <- cbind(subject_test, y_test, x_test)
data <- rbind(train, test)
```

4. extract only the measurements on the mean and standard deviation
```{r}
features <- read.table("respo/GetData_CourseProject/UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
mean_std <- c(grep("mean\\(\\)", features$V2), grep("std\\(\\)", features$V2))
mean_std <- mean_std + c(2)
mean_std <- c(1, 2, mean_std) 
mean_std <- sort(mean_std)
data <- data[mean_std]
```

5. uses descriptive activity names to name the activities in the data set
```{r}
data[,2] <- getActivity(data[,2])
```

6. labels the data set with descriptive variable names
```{r}
names <- c("subject", "activity", features$V2)[mean_std]
colnames(data) <- names
```

7. creates a second, independent tidy data set with the average of each variable for each activity and each subject. Write the data set to file called "res.txt"
```{r}
tt <- aggregate(data[,3:68], list(data$subject, data$activity), mean)
names(tt)[1:2] = c("subject", "activity")
write.table(tt, file="respo/GetData_CourseProject/res.txt", quote=FALSE, row.names=FALSE)
```
