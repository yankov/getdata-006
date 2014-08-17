# Set working directory. To run this script you should
# replace this path to wherever you put this script and data.
setwd('/Users/yankov/projects/coursera/getdata-006')

# 1. Merges the training and the test sets to create one data set.
train <- read.table("data/train/X_train.txt")
test <- read.table("data/test/X_test.txt")
data <- rbind(train, test)

# Add column for activity codes
y_train <- read.table("data/train/y_train.txt")
y_test <- read.table("data/test/y_test.txt")
data$ActivityCode <- rbind(y_train, y_test)

# Add column for subjects
subj_train <-read.table("data/train/subject_train.txt")
subj_test <-read.table("data/test/subject_test.txt")
data$subject <- rbind(subj_train, subj_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# I decided to look only for columns that include -mean() or and -std() 
# because they seemed to represent means and averages for measurements (something that was required).
# Some other columns although had Mean and Std in their names, but they seemed to be more complex functions of
# the data and not just means/stds of measurements.
features <- read.table("data/features.txt")
meanIdx <- grep("-mean\\(", features$V2)
stdIdx <- grep("-std\\(", features$V2)
idx <- c(meanIdx, stdIdx)
td1 <- data[idx]
td1$subject <- data$subject

# 3. Uses descriptive activity names to name the activities in the data set.
ad <- read.table("data/activity_labels.txt")
td1$activity <- sapply(data$ActivityCode, function(x) ad[[2]][x])

# 4. Appropriately labels the data set with descriptive variable names.
# I chose to make names camelcased, because it made them more readable.
# For ex: fBodyAccJerkMeanZ vs. fbodyaccjerkmeanz
ft <- features[idx,2]
ft <- gsub("-mean\\(\\)-?", "Mean", ft)
ft <- gsub("-std\\(\\)-?", "Std", ft)
colnames(td1) <- c(ft, "subject", "activity")

# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
td2 <- aggregate(td1[ft], by=list(subject = td1$subject[,1], activity=td1$activity[,1]), FUN=mean)

# Save tidy dataset 2
write.table(td2, file = "tidy_dataset2.txt", row.name=FALSE) 
