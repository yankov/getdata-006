getdata-006
===========
####Repository for Coursera "Getting and Cleaning data" course project.  

There is only one script file that does all the processing: `run_analysis.R.`. If you want to run it on your local computer:  
  1. Download Samsung data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
  2. Unpack it and put files in the `data` folder inside of the clonned repository  
  3. Modify path in the first line of script setwd(path) and set it to path your clonned repository

####What the script will do
The execution of the script will create a file `tidy_dataset2.txt` (tidy dataset #2) which will countain data described in details
in CodeBook.md. 

####How does it work

* Read data from `data/train/X_train.txt` and `data/test/X_test.txt` and merge it in one table called `data`
* Read activity codes from `data/train/y_train.txt` and `data/test/y_test.txt`, merge them and add as a column `ActivityCode` in `data`
* Read subjects' codes from `data/train/subject_train.txt` and `data/test/subject_test.txt`, merge them and add as a column `subject` in `data`
* Load feature labels from `data/features.txt`
* Find all features that have "-mean()" and "-std()" in their name. (Those are Means and Stds'. of measurements)
* Create first tidy datasets that contains only previously find columns and also subject and activity labels.
* Read activity labels from `data/activity_labels.txt`
* Use sapply to find activity label for every Activity Code and store the results in `activity` column in data
* Appropriately label variable names in dataset by renaming `-std()` and `-mean()` accordingly. As a result we get camelcased variable names.
* Use `aggregate` to create a second dataset `td2` with the average of each variable for each activity and each subject.
* Use `write.table` to create a file `tidy_dataset2.txt` that contains required data.

