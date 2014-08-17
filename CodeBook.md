---
title: "CodeBook.md"
---

Getting And Cleaning Data Codebook (Tidy Dataset 2)
===
  
  
Original source of data
---
The original dataset was taken from here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
and it contains the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

Data transformations
---
Steps that were taken to create a tidy dataset as specified in the requirements.  
  
  
* Merge training and test data sets (X_train.txt and  X_test.txt)
* Added columns for activity codes (from activity_labels.txt)
* Added columns for subjects (from subject_train.txt and subject_test.txt)
* Extracted only the measurements on the mean and standard deviation for each measurement and created first tidy dataset (td1)
* Added column name with activity labels to td1
* Appropriately labels the data set with descriptive variable names (used camelcased notation)
* Created a second (td2), independent tidy data set with the average of each variable for each activity and each subject.

  
  
The Data (tidy dataset №2)
---

Variable | Definition |Type | Range |
---------|------|-------|-------------|
subject  |A person performed activity  |int  | 1..30 |
activity | A type of activity performed|chr|WALKING<br />WALKING_UPSTAIRS<br />WALKING_DOWNSTAIRS<br />SITTING<br/>STANDING<br/>LAYING|
tBodyAccMeanX | Body Acceleration Signal Mean (X axis) | num |0.2215982..0.301461| 
tBodyAccMeanY | Body Acceleration Signal Mean (Y axis) |num|-0.04051395..-0.001308288|


