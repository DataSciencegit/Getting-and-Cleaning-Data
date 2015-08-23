# Code book

## Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Check the README.txt file for further details about this dataset. 

## Tidy dataset contains 68 columns (extracted columns based on mean and standardard deviation for each measurement) and 180 rows entries (6 activities * 30 subjects = 180). Below are the descriptive names of the columns.

 [1] "activity"                                       "subject"                                       
 [3] "timeBodyAccelerometer.mean()-X"                 "timeBodyAccelerometer.mean()-Y"                
 [5] "timeBodyAccelerometer.mean()-Z"                 "timeBodyAccelerometer.std()-X"                 
 [7] "timeBodyAccelerometer.std()-Y"                  "timeBodyAccelerometer.std()-Z"                 
 [9] "timeGravityAccelerometer.mean()-X"              "timeGravityAccelerometer.mean()-Y"             
[11] "timeGravityAccelerometer.mean()-Z"              "timeGravityAccelerometer.std()-X"              
[13] "timeGravityAccelerometer.std()-Y"               "timeGravityAccelerometer.std()-Z"              
[15] "timeBodyAccelerometerJerk.mean()-X"             "timeBodyAccelerometerJerk.mean()-Y"            
[17] "timeBodyAccelerometerJerk.mean()-Z"             "timeBodyAccelerometerJerk.std()-X"             
[19] "timeBodyAccelerometerJerk.std()-Y"              "timeBodyAccelerometerJerk.std()-Z"             
[21] "timeBodyGyroscopic.mean()-X"                    "timeBodyGyroscopic.mean()-Y"                   
[23] "timeBodyGyroscopic.mean()-Z"                    "timeBodyGyroscopic.std()-X"                    
[25] "timeBodyGyroscopic.std()-Y"                     "timeBodyGyroscopic.std()-Z"                    
[27] "timeBodyGyroscopicJerk.mean()-X"                "timeBodyGyroscopicJerk.mean()-Y"               
[29] "timeBodyGyroscopicJerk.mean()-Z"                "timeBodyGyroscopicJerk.std()-X"                
[31] "timeBodyGyroscopicJerk.std()-Y"                 "timeBodyGyroscopicJerk.std()-Z"                
[33] "timeBodyAccelerometerMagnitude.mean()"          "timeBodyAccelerometerMagnitude.std()"          
[35] "timeGravityAccelerometerMagnitude.mean()"       "timeGravityAccelerometerMagnitude.std()"       
[37] "timeBodyAccelerometerJerkMagnitude.mean()"      "timeBodyAccelerometerJerkMagnitude.std()"      
[39] "timeBodyGyroscopicMagnitude.mean()"             "timeBodyGyroscopicMagnitude.std()"             
[41] "timeBodyGyroscopicJerkMagnitude.mean()"         "timeBodyGyroscopicJerkMagnitude.std()"         
[43] "frequencyBodyAccelerometer.mean()-X"            "frequencyBodyAccelerometer.mean()-Y"           
[45] "frequencyBodyAccelerometer.mean()-Z"            "frequencyBodyAccelerometer.std()-X"            
[47] "frequencyBodyAccelerometer.std()-Y"             "frequencyBodyAccelerometer.std()-Z"            
[49] "frequencyBodyAccelerometerJerk.mean()-X"        "frequencyBodyAccelerometerJerk.mean()-Y"       
[51] "frequencyBodyAccelerometerJerk.mean()-Z"        "frequencyBodyAccelerometerJerk.std()-X"        
[53] "frequencyBodyAccelerometerJerk.std...Y"         "frequencyBodyAccelerometerJerk.std()-Z"        
[55] "frequencyBodyGyroscopic.mean()-X"               "frequencyBodyGyroscopic.mean()-Y"              
[57] "frequencyBodyGyroscopic.mean()-Z"               "frequencyBodyGyroscopic.std()-X"               
[59] "frequencyBodyGyroscopic.std()-Y"                "frequencyBodyGyroscopic.std()-Z"               
[61] "frequencyBodyAccelerometerMagnitude.mean()"     "frequencyBodyAccelerometerMagnitude.std()"     
[63] "frequencyBodyAccelerometerJerkMagnitude.mean()" "frequencyBodyAccelerometerJerkMagnitude.std()" 
[65] "frequencyBodyGyroscopicMagnitude.mean()"        "frequencyBodyGyroscopicMagnitude.std()"        
[67] "frequencyBodyGyroscopicJerkMagnitude.mean()"    "frequencyBodyGyroscopicJerkMagnitude.std()" 
