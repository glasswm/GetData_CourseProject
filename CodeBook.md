DATA DICTIONARY - Human Activity Dataset Produced by Smartphones 
=================================================================
Original data:
-------------------------
- [source](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 
- [description](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Data Transformation Steps in `run_analysis.R` script
-------------------------
1. read raw data.
2. use cbind to bind the subject person, activity label and the observation.  
use rbind to bind the train data and test data.
3. extract only the measurements on the mean and standard deviation.
4. uses descriptive activity names to name the activities in the data set.
5. labels the data set with descriptive variable names.
6. creates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. save the result tidy dataset as `res.txt`

Variables
-------------------------
### subject  
&nbsp;&nbsp;&nbsp;&nbsp; The subject who performed the activity. A group of 30 volunteers within an age bracket of 19-48 years.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1..30  

### activity
&nbsp;&nbsp;&nbsp;&nbsp; activities person performed  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  1 WALKING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  2 WALKING_UPSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  3 WALKING_DOWNSTAIRS  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  4 SITTING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  5 STANDING  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  6 LAYING  

### tBodyAcc-mean()-X
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAcc-mean()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAcc-mean()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAcc-std()-X
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAcc-std()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAcc-std()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tGravityAcc-mean()-X 
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the gravity acceleration in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tGravityAcc-mean()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the gravity acceleration in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tGravityAcc-mean()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the gravity acceleration in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tGravityAcc-std()-X
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the gravity acceleration in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tGravityAcc-std()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the gravity acceleration in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tGravityAcc-std()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the gravity acceleration in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccJerk-mean()-X
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration Jerk in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccJerk-mean()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration Jerk in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccJerk-mean()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration Jerk in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccJerk-std()-X
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration Jerk in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccJerk-std()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration Jerk in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccJerk-std()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration Jerk in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyro-mean()-X
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyro-mean()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyro-mean()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyro-std()-X
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyro-std()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyro-std()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroJerk-mean()-X
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope Jerk in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroJerk-mean()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope Jerk in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroJerk-mean()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope Jerk in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroJerk-std()-X
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope Jerk in X direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroJerk-std()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope Jerk in Y direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroJerk-std()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope Jerk in Z direction  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional body acceleration  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional body acceleration  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tGravityAccMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional gravity acceleration  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tGravityAccMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional gravity acceleration  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccJerkMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional body acceleration Jerk  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyAccJerkMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional body acceleration Jerk  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional body gyroscope  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional body gyroscope  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroJerkMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional body gyroscope Jerk  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### tBodyGyroJerkMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional body gyroscope Jerk  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAcc-mean()-X
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration in X direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAcc-mean()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration in Y direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAcc-mean()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration in Z direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAcc-std()-X
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration in X direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAcc-std()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration in Y direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAcc-std()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration in Z direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAccJerk-mean()-X
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration Jerk in X direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAccJerk-mean()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration Jerk in Y direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAccJerk-mean()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body acceleration Jerk in Z direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAccJerk-std()-X
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration Jerk in X direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAccJerk-std()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration Jerk in Y direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAccJerk-std()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body acceleration Jerk in Z direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyGyro-mean()-X
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope in X direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyGyro-mean()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope in Y direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyGyro-mean()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the body gyroscope in Z direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyGyro-std()-X
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope in X direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyGyro-std()-Y
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope in Y direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyGyro-std()-Z
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the body gyroscope in Z direction(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAccMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional body acceleration(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyAccMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional body acceleration(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyBodyAccJerkMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional body acceleration Jerk(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyBodyAccJerkMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional body acceleration Jerk(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyBodyGyroMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional body gyroscope(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyBodyGyroMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional body gyroscope(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyBodyGyroJerkMag-mean()
&nbsp;&nbsp;&nbsp;&nbsp; Mean value of the magnitude of these three-dimensional body gyroscope Jerk(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]
### fBodyBodyGyroJerkMag-std()
&nbsp;&nbsp;&nbsp;&nbsp; Standard deviation of the magnitude of these three-dimensional body gyroscope Jerk(frequency domain)  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [-1,1]