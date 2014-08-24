run_analysis <- function () {  
  ##=======================================================================
  ## This run_analysis function performs the following:
  ## Step 1: get the dataset files, if there are not already in the working directory
  ## Step 2: put the train data together (subject, activity, and measures).  
  ##  	These 3 files contain the same number of rows, so they are put together
  ##		by binding the columns. 
  ## Step 3: put the test data together (subject, activity, and measures)
  ##		These 3 files contain the same number of rows, so they are put together
  ##		by binding the columns. 
  ## Step 4: put the test and train data together
  ##		These 2 sets of data contain the same columns, so they are put together
  ##		by binding the rows.
  ## Step 5: add in the activity labels, this is done using the ActivityCode to find the 
  ##		matching Activity Label for each row
  ## Step 6: add in the measurement column names using the data in the features.txt file
  ## Step 7: limit the measurement columns to only the mean() and std() columns, as
  ##		per the assignment instructions
  ## Step 8: clean up the column names to remove special characters, so the data can 
  ##		easily be used by other programs.  There are varying opinions of the
  ##		naming conventions that should be used to create a tidy dataset.  For
  ##		ease of readability and traceability back to the original source, only 
  ##		the special characters were taken out.
  ## Step 9: write out the first dataset to a file
  ## Step 10: create a second, independent tidy data set with the average
  ##          of each variable by Subject and Activity, update the column
  ##          names to denote "MeanOf" and write it out to a file  
  ##=======================================================================
  
  require(data.table)
  
  ##=======================================================================
  ## Step 1: get the dataset files, if there are not already in the working directory
  ##
  get_files()
  ##=======================================================================
  
  ##=======================================================================
  ## Step 2: put the train data together (subject, activity, and measures)
  ##
  ## get subject_train data (subject IDs)
  dfSubjectTrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
  ## rename column from v1 to Subject
  names(dfSubjectTrain)[1] <- "Subject"
 
  ## get x_train data (the big data set)
  dfXTrain <- read.table("./UCI HAR Dataset/train/x_train.txt")
 
  ## get y_train data (activity IDs)
  dfYTrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
  ## rename column from v1 to ActivityCode, since this columns represents the ActivityCode
  names(dfYTrain)[1] <- "ActivityCode"
   
  ## put Subject IDs and Activity IDs and Data together
  dfAllTrainData <- cbind(dfSubjectTrain, dfYTrain, dfXTrain)
  ##=======================================================================
  
  
  ##=======================================================================
  ## Step 3: put the test data together (subject, activity, and measures)
  ##
  ## get subject_test data (subject IDs)
  dfSubjectTest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
  ## rename column from v1 to Subject, since this columns represents the subject
  names(dfSubjectTest)[1] <- "Subject"
  
  ## get x_test data (the big data set)
  dfXTest <- read.table("./UCI HAR Dataset/test/x_test.txt")
  
  ## get y_test data (activity IDs)
  dfYTest <- read.table("./UCI HAR Dataset/test/y_test.txt")
  ## rename column from v1 to ActivityCode, since this columns represents the ActivityCode
  names(dfYTest)[1] <- "ActivityCode"
  
  ## put Subject and Activity IDs and Data together
  dfAllTestData <- cbind(dfSubjectTest, dfYTest, dfXTest)
  ##=======================================================================

  ##=======================================================================
  ## Step 4: put the test and train data together
  ##
  ## now combine test and train data
  dfTestAndTrain <- rbind(dfAllTestData, dfAllTrainData)
  ##=======================================================================
  
  ##=======================================================================
  ## Step 5: add in the activity labels
  ## 
  ## get class labels with their activity name data
  dfActivities <- read.table("./UCI HAR Dataset/Activity_Labels.txt")
  names(dfActivities)[1] <- "ActivityCode"
  names(dfActivities)[2] <- "ActivityLabel"
  
  ## add Activity Labels to Data 
  dfTestAndTrainWActivityLabels <- merge(dfActivities, dfTestAndTrain)
  ##=======================================================================
  
  ##=======================================================================
  ## Step 6: add in the measurement column names
  ## 
  ## get features data - these are the data column labels
  dfFeatures <- read.table("./UCI HAR Dataset/features.txt")
  ## just get the labels to update all column names 
  vFeaturesLabels <- lapply(dfFeatures[,2], as.character)
  ## update the column names
  names(dfTestAndTrainWActivityLabels)[4:564] <- vFeaturesLabels
  ##=======================================================================
  
  ##=======================================================================
  ## Step 7: limit the measurement columns to only the mean() and std() columns
  ## 
  ## get only features data that contains "mean()"
  dfFeaturesMeanOnly <- dfFeatures[grep("mean()", dfFeatures$V2, fixed=TRUE),]
  ## get only features data that contains "std()"
  dfFeaturesStdOnly <- dfFeatures[grep("std()", dfFeatures$V2, fixed=TRUE),]
  ## merge mean() and std() features data together
  dfFeaturesStdAndMean <- rbind(dfFeaturesMeanOnly, dfFeaturesStdOnly)
  ## get only the column names for later subsetting
  dfColumnNames <- dfFeaturesStdAndMean[,c("V2")]
  ## remove factor levels to change this to a vector
  vColumnNames <- levels(droplevels(dfColumnNames))
  ## create a char vector for the additional 2 columns
  vOtherColumns <- c("Subject", "ActivityLabel")
  ## add all of the column names together
  vAllColumnNames <- c(vOtherColumns, vColumnNames)
  
  ## now limit to only the mean and std columns, this is data set #1
  df1 <- dfTestAndTrainWActivityLabels[, vAllColumnNames]
  ##=======================================================================
  
  ##=======================================================================
  ## Step 8: clean up the column names to remove special characters
  ## 
  names(df1)<- gsub("-|\\()", "", names(df1))
  ##=======================================================================
  
  ##=======================================================================
  ## Step 9: write out the first dataset to a file
  ##  
  write.table(df1, file = "outputDataset1.txt", row.name=FALSE)
  ##=======================================================================
  
  ##=======================================================================
  ## Step 10: create a second, independent tidy data set with the average
  ##          of each variable by Subject and Activity, update the column
  ##          names to denote "MeanOf" and write it out to a file
  ##
  df2 <- data.table(df1, key="Subject,ActivityLabel")
  df2 <- df2[, lapply(.SD, mean), by="Subject,ActivityLabel", .SDcols=c(3:68)]
  ## now update the column names to reflect what this data is
  names(df2) <- paste("MeanOf", names(df2), sep="")
  names(df2)[1] <- "Subject"
  names(df2)[2] <- "Activity"

  ## write out the second dataset to a file
  write.table(df2, file = "outputDataset2.txt", row.name=FALSE)
  ##=======================================================================
}


get_files <- function () {
  ## This get_files function checks for files in the working directory, and if they are not
  ## found, it will download and unzip them

  ## Check if the unzip folder has already been created
  ## assumption is that if the folder exists, all of the data files have 
  ## been unzipped and exist in the folder
  if (!file.exists("UCI%20HAR%20Dataset")) {
    
    ## Make a data folder, if one doesn't exist  
    if (!file.exists("RawData")) {
      dir.create("RawData")
    }
    
    ## Download the file, if it's not in the data folder
    downloadedFile <- "./RawData/FUCIHARDataset.zip"
    if (!file.exists(downloadedFile)) {
      zipFileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(zipFileURL, destfile=downloadedFile)
    }
  
    ## unzip the files - will unzip to UCI HAR Dataset folder in working directory
    unzip(downloadedFile)
  }
}  