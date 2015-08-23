# Getting and Cleaning Data Course Project 

Project: You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the 
* average of each variable for each activity and each subject.

## Steps involved in running the program to generate a tidy dataset

Download the file from the below URL and save it in a directory named “data”. If data folder does not exist it creates one.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Once downloaded the program unzips the file

3. A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

4. Read the all the files needed to accomplish the result.

5. Label testX and trainX dataset with variables from features, rename the columns for subject and activity dataset and then merge the activity and subject columns and concatenate the data tables by rows. This merges the training and the test sets to create one data set.

6. Use the activity names from the activity files and map the numbers to the descriptive activity names.

7. The dataset contains x columns, extract only the measurements on the mean and standard deviation for each measurement. This uses regular expression to be able to search for the measurements mean() and std().

8. As per the description on the data set in the course project appropriately label the data set with descriptive variable names. The gsub command is used to search and replace the existing names with descriptive names.

9. From the dataset, a second dataset was created that list the average of each variable for each activity and each subject.
