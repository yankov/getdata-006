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
tBodyAccMeanZ | Body Acceleration Signal Mean (Z axis) |num|-0.1525139..-0.07537847|
tGravityAccMeanX | Gravity Acceleration Signal Mean (X axis) | num| -0.6800432..0.9745087|
tGravityAccMeanY | Gravity Acceleration Signal Mean (Y axis) | num| -0.4798948..0.9565938|
tGravityAccMeanZ | Gravity Acceleration Signal Mean (Z axis) | num| -0.4950887..0.957873|
tBodyAccJerkMeanX | Acceleration Jerk Signal Mean (X axis) |num|0.0426881..0.130193|
tBodyAccJerkMeanY | Acceleration Jerk Signal Mean (Y axis) |num|-0.03868721..0.05681859|
tBodyAccJerkMeanZ | Acceleration Jerk Signal Mean (Z axis) |num|-0.06745839..0.03805336|
tBodyGyroMeanX | Angular Jerk Signal Mean (X axis)|num|-0.2057754..0.1927045|
tBodyGyroMeanY | Angular Jerk Signal Mean (Y axis)|num|-0.2042054..0.02747076|
tBodyGyroMeanZ | Angular Jerk Signal Mean (Z axis)|num|-0.0724546..0.1791021|
tBodyGyroJerkMeanX | Average of Acc. and Ang. Jerk signals Mean (X axis) | num |-0.1572125..-0.02209163|
tBodyGyroJerkMeanY | Average of Acc. and Ang. Jerk signals Mean (Y axis) | num |-0.07680899..-0.01320228|
tBodyGyroJerkMeanZ | Average of Acc. and Ang. Jerk signals Mean (Z axis) | num |-0.09249985..-0.006940664|
tBodyAccMagMean | Magnitude of Body Acceleration Mean | num | -0.9864932..0.6446043|
tGravityAccMagMean | Magnitutde of Gravity Acceleration Mean | num | -0.9864932..0.6446043|
tBodyAccJerkMagMean | Magnitude of Body Acc.jerk Mean | num | -0.9928147..0.4344904|
tBodyGyroMagMean| Magnitude of Ang. Signal Mean | num | -0.9807408..0.4180046|
tBodyGyroJerkMagMean| Magnitude of Ang. Jerk Signal Mean | num | -0.9973225..0.08758166|
fBodyAccMeanX| FFT Body Acceleration Signal Mean (X axis) | num | -0.9952499..0.537012|
fBodyAccMeanY| FFT Body Acceleration Signal Mean (Y axis) | num | -0.9890343..0.537012|
fBodyAccMeanZ| FFT Body Acceleration Signal Mean (Z axis) | num | -0.9952499..0.5241877|
fBodyAccJerkMeanX| FFT Acc. Jerk Signal Mean (X axis) | num | -0.9946308..0.4743173|
fBodyAccJerkMeanY| FFT Acc. Jerk Signal Mean (Y axis) | num | -0.9893988..0.2767169|
fBodyAccJerkMeanZ| FFT Acc. Jerk Signal Mean (Z axis) | num | -0.9920184..0.1577757|
fBodyGyroMeanX| FFT Angular Signal Mean (X axis) | num |-0.9931226..0.4749624|
fBodyGyroMeanY| FFT Angular Signal Mean (Y axis) | num |-0.9940255..0.328817|
fBodyGyroMeanZ| FFT Angular Signal Mean (Z axis) | num |-0.9859578..0.4924144|
fBodyAccMagMean| FFT Magnitude of Body Acc. Signal Mean | num | -0.9868006..0.5866376|
fBodyBodyAccJerkMagMean| FFT Magnitude of Body Acc. Jerk Signal Mean | num | -0.9939983..0.5384048|
fBodyBodyGyroMagMean| FFT Magnitude Ang. Signal Mean | num | -0.9865352..0.2039798|
fBodyBodyGyroJerkMagMean| FFT Magnitude Ang. Signal Mean | num | -0.9976174..0.1466186|
tBodyAccStdX| Body Acceleration Signal Std. (X axis) | num | -0.9960686..0.6269171|
tBodyAccStdY| Body Acceleration Signal Std. (Y axis) | num | -0.9902409..0.616937|
tBodyAccStdZ| Body Acceleration Signal Std. (Z axis) | num | -0.9876587..0.6090179|
tGravityAccStdX| Gravity Acc. Signal Std. (X axis) | num | -0.9967642..-0.8295549|
tGravityAccStdY| Gravity Acc. Signal Std. (Y axis) | num | -0.9942476..-0.6435784|
tGravityAccStdZ| Gravity Acc. Signal Std. (Z axis) | num | -0.9909572..-0.6101612|
tBodyAccJerkStdX| Body Acc. Jerk Signal Std. (X axis) | num | -0.9946045..0.544273|
tBodyAccJerkStdY| Body Acc. Jerk Signal Std. (Y axis) | num | -0.9895136..0.3553067|
tBodyAccJerkStdZ| Body Acc. Jerk Signal Std. (Z axis) | num | -0.9932883..0.03101571|
tBodyGyroStdX| Body Ang. Signal Std. (X axis) | num | -0.9942766..0.2676572|
tBodyGyroStdY| Body Ang. Signal Std. (Y axis) | num | -0.9942105..0.4765187|
tBodyGyroStdZ| Body Ang. Signal Std. (Z axis) | num | -0.9855384..0.5648758|
tBodyGyroJerkStdX| Body Ang. Jerk Signal Std. (X axis) | num | -0.9965425..0.1791486|
tBodyGyroJerkStdY| Body Ang. Jerk Signal Std. (Y axis) | num | -0.9970816..0.2959459|
tBodyGyroJerkStdZ| Body Ang. Jerk Signal Std. (Z axis) | num | -0.9953808..0.1932065|
tBodyAccMagStd| Magnitude Acc. Signal Std. | num | -0.9864645..0.4284059|
tGravityAccMagStd| Magnitude Gravity Acc. Signal Std. | num | -0.9864645..0.4284059|
tBodyAccJerkMagStd| Magnitude Acc. Jerk Signal Std. | num | -0.9946469..0.4506121|
tBodyGyroMagStd| Magnitude Ang. Signal Std. | num | -0.9813727..0.299976|
tBodyGyroJerkMagStd| Magnitude Ang. Jerk Signal Std. | num | -0.9976661..0.2501732|
fBodyAccStdX| FFT Body Acceleration Signal Std. (X axis) | num | -0.9966046..0.6585065|
fBodyAccStdY| FFT Body Acceleration Signal Std. (Y axis) | num | -0.9906804..0.5601913|
fBodyAccStdZ| FFT Body Acceleration Signal Std. (Z axis) | num | -0.9872248..0.6871242|
fBodyAccJerkStdX| FFT Body Acceleration Jerk Signal Std. (X axis) | num | -0.9950738..0.4768039 |
fBodyAccJerkStdY| FFT Body Acceleration Jerk Signal Std. (Y axis) | num | -0.9904681..0.3497713 |
fBodyAccJerkStdZ| FFT Body Acceleration Jerk Signal Std. (Z axis) | num | -0.9931078..-0.006236475 |
fBodyGyroStdX| FFT Body Ang. Signal Std. (X axis) | num | -0.9946522..0.1966133|
fBodyGyroStdY| FFT Body Ang. Signal Std. (Y axis) | num | -0.9943531..0.6462336|
fBodyGyroStdZ| FFT Body Ang. Signal Std. (Z axis) | num | -0.9867253..0.5224542|
fBodyAccMagStd| FFT Magnitude Body Acceleration Signal Std. | num | -0.9876485..0.1786846|
fBodyBodyAccJerkMagStd| FFT Magnitude Acceleration Jerk Signal Std. | num | -0.9943667..0.3163464|
fBodyBodyGyroMagStd| FFT Magnitude Ang. Signal Std. | num | -0.9814688..0.2366597|
fBodyBodyGyroJerkMagStd| FFT Magnitude Ang. Jerk Signal Std. | num |-0.9975852..0.2878346|



