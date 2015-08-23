run_analysis <- function()
        #Download the file 
        if(!file.exists("./data")){dir.create("./data")}
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileUrl,destfile="./data/UCI HAR Dataset.zip",method="curl")
        
        #Unzip the file
        unzip("./data/UCI HAR Dataset.zip", exdir="./data")
        
        #Read data from files
        testX <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
        testY <- read.table("./data/UCI HAR Dataset/test/Y_test.txt")
        trainX <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
        trainY <- read.table("./data/UCI HAR Dataset/train/Y_train.txt")
        testSubject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
        trainSubject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
        features <- read.table("./data/UCI HAR Dataset/features.txt")
        activity <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
        
        #1: Merges the training and the test sets to create one data set.
        
        #Label testX and trainX dataset with variables from features
        cnamesfeatures <-features[,2]
        names(testX) <- cnamesfeatures
        names(trainX) <- cnamesfeatures
        
        #Assign column name to subject_test and subject_train dataset
        names(testSubject) <- "subject"
        names(trainSubject) <- "subject"
        
        #Assign colunmn name to testY and trainY dataset
        names(testY) <- "activity"
        names(trainY) <- "activity"
        
        #Merge columns and concatenate the data tables by rows
        testDataset <- cbind(testY, testSubject, testX)
        trainDataset <- cbind(trainY, trainSubject, trainX)
        Dataset <- rbind(testDataset,trainDataset)
        
        #3: Uses descriptive activity names to name the activities in the data set
        
        #Assign column names to activity
        names(activity) <- c("id", "activity")
        
        #Merge activity dataset with the Dataset to use the descriptive activity names
        activityname <- merge(activity, Dataset, by.x = "id", by.y = "activity", all = TRUE)
        
        #2: Extracts only the measurements on the mean and standard deviation for each measurement.
        features_mean_std <-features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]
        features_mean_std <-c("activity", "subject", as.character(features_mean_std))
        Datafeatures <- subset(activityname, select = features_mean_std)
       
        
        #4: Appropriately labels the data set with descriptive variable names.
        names(Datafeatures) <- gsub("Acc","Accelerometer",names(Datafeatures))
        names(Datafeatures) <- gsub("Gyro","Gyroscopic",names(Datafeatures))
        names(Datafeatures) <- gsub("BodyBody","Body",names(Datafeatures))
        names(Datafeatures) <- gsub("^t","time",names(Datafeatures))
        names(Datafeatures) <- gsub("^f","frequency",names(Datafeatures))
        names(Datafeatures) <- gsub("Mag","Magnitude",names(Datafeatures))
        View(Datafeatures)
        
        write.table(Datafeatures,"Datafeatures.txt")
        #5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        meanDatafeatures <- Datafeatures[, 3:dim(Datafeatures)[2]] 
        tidymeanDatafeatures <- aggregate(meanDatafeatures, list(Datafeatures$activity, Datafeatures$subject), mean)
        
        #Name the columns names
        names(tidymeanDatafeatures) [1] <- "activity"
        names(tidymeanDatafeatures) [2] <- "subject"
        
        #View tidymean
        View(tidymeanDatafeatures)
        write.table(tidymeanDatafeatures,"tidymeanDatafeatures.txt")