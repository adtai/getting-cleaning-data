# run_analysis.R
# Run analysis of the Samasung Galaxy S smartphone dataset

## ASSUMPTION: The files are already downloaded and available in
#              the directory where the script is.

# Shows information about the variables used on the feature vector
features_info_filename <- "features_info.txt"
# List of all features
features_filename <- "features.txt"
# Links the class labels with their activity name.
activity_labels_filename <- "activity_labels.txt"
# Training set
training_set_filename <- "train/X_train.txt"
# Training labels
training_labels_filename <- "train/Y_train.txt"
# Test set
test_set_filename <- "test/X_test.txt"
# Test labels
test_labels_filename <- "test/Y_test.txt"
# Training subject
training_subjects_filename <- "train/subject_train.txt"
# Test subject
test_subjects_filename <- "test/subject_test.txt"

## Load the files to begin processing.

# Load the feature names
feature_labels <- read.table(features_filename,
                             col.names=c("ID", "Feature"),
                             colClasses=c("numeric", "character")
                            )
# Clean up the feature labels
feature_labels$Feature <- gsub("\\(\\)", "", feature_labels$Feature)
feature_labels$Feature <- gsub("-", "_", feature_labels$Feature)
# Check which features are mean / std values
mean_std_features <- c(which(c(grepl("mean", feature_labels$Feature))),
                       which(c(grepl("std", feature_labels$Feature)))
                      )

# Load the activity labels
activity_labels <- read.table(activity_labels_filename,
                              col.names=c("ID", "Activity"),
                              colClasses=c("numeric", "factor")
                             )
# Load the training set labels
training_labels <- read.table(training_labels_filename,
                              col.names=c("ActivityID"),
                              colClasses=c("numeric")
                             )
# Load the test set labels
test_labels <- read.table(test_labels_filename,
                          col.names=c("ActivityID"),
                          colClasses=c("numeric")
                         )
# Load the training data
training_data_raw <- read.table(training_set_filename,
                                col.names=feature_labels$Feature,
                                colClasses="numeric"
                               )

# Load the test data
test_data_raw <- read.table(test_set_filename,
                            col.names=feature_labels$Feature,
                            colClasses="numeric"
                           )

# Load the training subject data
training_subjects <- read.table(training_subjects_filename,
                                col.names=c("SubjectID"),
                                colClasses="numeric"
                               )

# Load the test subject data
test_subjects <- read.table(test_subjects_filename,
                            col.names=c("SubjectID"),
                            colClasses="numeric"
                           )

# TODO - merge the activity, training ID values with the training data set

# STEP 1. Merge the training and test sets to create one data set.
# training_data_with_labels <- cbind(training_labels, training_data_raw)
# test_data_with_labels <- cbind(test_lables, test_data_raw)
merged_data <- rbind(training_data_raw, test_data_raw)

# STEP 2. Extract only the measurements on the mean and standard deviation
# for each measurement.
mean_std_merged_data <- merged_data[, mean_std_features]
# Tidy up the feature names; remove any parentheses

# STEP 3. Use descriptive activity names to name the activities in the data
# set.
# NOTE - merge seems to re-order the data sorted by the ID column; so
# the order of the rows in training_labels will not match the order of the
# rows in training_activities
activity_ids <- rbind(training_labels, test_labels)
subject_ids <- rbind(training_subjects, test_subjects)
merged_data_with_activity_ids <- cbind(activity_ids, subject_ids,
                                       mean_std_merged_data)

merged_data_with_activity_labels <- merge(merged_data_with_activity_ids,
                                          activity_labels,
                                          by.x="ActivityID",
                                          by.y="ID")
# Drop the 'ActivityID' column now that the nice name column 'Activity' is
# merged in.
drops <- c("ActivityID")
merged_data_with_activity_labels <- merged_data_with_activity_labels[, !(names(merged_data_with_activity_labels) %in% drops)]

# STEP 4 - label the dataset. This was already done as part of loading
# the data earlier.

# STEP 5 - From the data set in step 4, creates a second, independent tidy
# data set with the average of each variable for each activity and each
# subject
library(dplyr)
subject_activity_groups <- group_by(merged_data_with_activity_labels, SubjectID, Activity)
summarized_data <- summarise_each(subject_activity_groups, c("mean"))

write.table(summarized_data, file="output.txt", row.names=FALSE)
