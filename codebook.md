# Codebook

## About
The output.txt file is a result of cleaning the initial dataset. Each row represents the mean value for each measurement taken of the given subject ID performing a certain activity.

Each column matches a column from the original dataset, which is described in more detail on the [UCI Machine Learning Website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

For instance, an entry as follows:

| SubjectID | Activity | tBodyAcc\_mean\_X | ... |
|-----------|----------|-----------------|-----|
| ...       | ...      | ...             |     |
| 1         | LAYING   | 0.22159824394   | ... |
| ...       | ...      | ...             |     |

The row would mean that for all the measurements of SubjectID 1 performing the laying activity, the average (mean) tBodyAcc\_mean\_X value was 0.22159... Other columns in the same row could be interpreted the same as the tBodyAcc\_mean\_X column.

## Columns
* SubjectID - The ID number of the subject
* Activity - One of 6 possible activity values: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING

The remaining columns are measurements in the original dataset. The following description is copied from the original features\_info.txt in the dataset. A feature named 'tBodyAcc\_mean\_X' represents the mean of the time domain signals for the body acceleration in the X direction.

* tBodyAcc\_mean\_X
* tBodyAcc\_mean\_Y
* tBodyAcc\_mean\_Z
* tGravityAcc\_mean\_X
* tGravityAcc\_mean\_Y
* tGravityAcc\_mean\_Z
* tBodyAccJerk\_mean\_X
* tBodyAccJerk\_mean\_Y
* tBodyAccJerk\_mean\_Z
* tBodyGyro\_mean\_X
* tBodyGyro\_mean\_Y
* tBodyGyro\_mean\_Z
* tBodyGyroJerk\_mean\_X
* tBodyGyroJerk\_mean\_Y
* tBodyGyroJerk\_mean\_Z
* tBodyAccMag\_mean
* tGravityAccMag\_mean
* tBodyAccJerkMag\_mean
* tBodyGyroMag\_mean
* tBodyGyroJerkMag\_mean
* fBodyAcc\_mean\_X
* fBodyAcc\_mean\_Y
* fBodyAcc\_mean\_Z
* fBodyAcc\_meanFreq\_X
* fBodyAcc\_meanFreq\_Y
* fBodyAcc\_meanFreq\_Z
* fBodyAccJerk\_mean\_X
* fBodyAccJerk\_mean\_Y
* fBodyAccJerk\_mean\_Z
* fBodyAccJerk\_meanFreq\_X
* fBodyAccJerk\_meanFreq\_Y
* fBodyAccJerk\_meanFreq\_Z
* fBodyGyro\_mean\_X
* fBodyGyro\_mean\_Y
* fBodyGyro\_mean\_Z
* fBodyGyro\_meanFreq\_X
* fBodyGyro\_meanFreq\_Y
* fBodyGyro\_meanFreq\_Z
* fBodyAccMag\_mean
* fBodyAccMag\_meanFreq
* fBodyBodyAccJerkMag\_mean
* fBodyBodyAccJerkMag\_meanFreq
* fBodyBodyGyroMag\_mean
* fBodyBodyGyroMag\_meanFreq
* fBodyBodyGyroJerkMag\_mean
* fBodyBodyGyroJerkMag\_meanFreq
* tBodyAcc\_std\_X
* tBodyAcc\_std\_Y
* tBodyAcc\_std\_Z
* tGravityAcc\_std\_X
* tGravityAcc\_std\_Y
* tGravityAcc\_std\_Z
* tBodyAccJerk\_std\_X
* tBodyAccJerk\_std\_Y
* tBodyAccJerk\_std\_Z
* tBodyGyro\_std\_X
* tBodyGyro\_std\_Y
* tBodyGyro\_std\_Z
* tBodyGyroJerk\_std\_X
* tBodyGyroJerk\_std\_Y
* tBodyGyroJerk\_std\_Z
* tBodyAccMag\_std
* tBodyGravityMag\_std
* tBodyAccJerkMag\_std
* tBodyGyroMag\_std
* tBodyGyroJerkMag\_std
* fBodyAcc\_std\_X
* fBodyAcc\_std\_Y
* fBodyAcc\_std\_Z
* fBodyAccJerk\_std\_X
* fBodyAccJerk\_std\_Y
* fBodyAccJerk\_std\_Z
* fBodyGyro\_std\_X
* fBodyGyro\_std\_Y
* fBodyGyro\_std\_Z
* fBodyAccMag\_std
* fBodyBodyAccJerkMag\_std
* fBodyBodyGyroMag\_std
* fBodyBodyGyroJerkMag\_std




### Feature Details

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation

