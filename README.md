# Getting and Cleaning Data

## About
This is my submission for course project assignment for the [Getting and Cleaning Data](https://class.coursera.org/getdata-012/) Coursera class. In this assignment, we are asked to take some physical activity data captured by a Samsung Galaxy smartphone and clean it up. The data provided in the assignment is originally from the [UCI Machine Learning Datasets website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). We are asked to create a script 'run\_analysis.R' which does the following:

1. Merges the training and test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Files
* README.md - This markdown file describing the project, code implementation, and repository files
* run\_analysis.R - The R code which produced the output.txt result.
* output.txt - The result of running the run\_analysis.R script.
* codebook.md - Codebook explaining the attributes in the output.txt file.

## Implementation

There is an assumption the R code is being run in the same directory where the dataset lives. For instance, if the dataset was extracted to /home/someuser/dataset and I could find the file /home/someuser/dataset/features.txt, the R script should be at /home/someuser/dataset/run\_analysis.R.

1. Define the filenames with the required raw data.
2. Read in the various raw data
    * During reading, apply the feature names, slightly cleaned up based on the descriptions provided in features.txt (Requirement #4)
3. Identify features which are 'means' or 'standard deviations' for measurements.
    * Uses grepl to check which features have the keyword 'mean' or 'std' in the list of features.
4. Merge the training data and test data using rbind (Requirement #1)
5. Trim the columns to the desired features only using subsetting (Requirement #2)
6. Provide descriptive activity names (Requirement #3)
    * Generate a column of activity IDs and use cbind to concatentate with the dataset from Step 5.
    * Use merge to merge the activity labels with the dataset from the previous step.
    * Drop the activityID column since it's no longer necessary
7. Group the data by subjectID and activity, then summarize the result (Requirement #5).
    * Print the result to output.txt

## References
* TODO

