This CodeBook contains:
- Code Book (Data Dictionary)
- Study Design (Instruction List or Summary Choices to get from raw data to this dataset)
- Original Data Source Reference

===================================================================================
CODE BOOK (DATA DICTIONARY for outputDataset2.txt)

Subject 
	Identifier of Study Subject
		Values are 1-30 to denote one of the 30 subjects who participated in the study

Activity 
	Type of activity being measured
		WALKING

		WALKING_UPSTAIRS

		WALKING_DOWNSTAIRS
		SITTING
		STANDING
		
LAYING
	

-----------------------------------------------------------------------------------
*NOTE: All other variables below are named identical to the original source, except 
they are Means of the values by a subject and an activity and so they begin with 
"MeanOf" and the special characters have been removed for easier use in other 
systems.  
The initial f and t in the variables stand for frequency domain signals and time 
respectively.  
Acc is an abbreviation for Acceleration.  
Gyro is an abbreviation for gyroscope.  
std is an abbreviation
for Standard Deviation.  

From the original datasource (features_info.txt):
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."

The body acceleration signal was obtained by subtracting the gravity from the total acceleration. 

The body gyroscope values are the angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

For additional information on the variables used, consult the metadata 
of original data source referenced in the Original Datasource section.
-----------------------------------------------------------------------------------

MeanOffBodyAccmeanX 
	An average of fBodyAcc-mean()-X for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccmeanY 
	An average of fBodyAcc-mean()-Y for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccmeanZ 
	An average of fBodyAcc-mean()-Z for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccstdX 
	An average of fBodyAcc-std()-X for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccstdY 
	An average of fBodyAcc-std()-Y for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccstdZ 
	An average of fBodyAcc-std()-Z for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccJerkmeanX 
	An average of fBodyAccJerk-mean()-X for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccJerkmeanY 
	An average of fBodyAccJerk-mean()-Y for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccJerkmeanZ 
	An average of fBodyAccJerk-mean()-Z for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccJerkstdX 
	An average of fBodyAccJerk-std()-X for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccJerkstdY 
	An average of fBodyAccJerk-std()-Y for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccJerkstdZ 
	An average of fBodyAccJerk-std()-Z for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccMagmean 
	An average of fBodyAccMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOffBodyAccMagstd 
	An average of fBodyAccMag-std() for a subject and activity
	*see above section for details on original measurement

MeanOffBodyBodyAccJerkMagmean 
	An average of fBodyBodyAccJerkMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOffBodyBodyAccJerkMagstd 
	An average of fBodyBodyAccJerkMag-std() for a subject and activity
	*see above section for details on original measurement

MeanOffBodyBodyGyroJerkMagmean 
	An average of fBodyBodyGyroJerkMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOffBodyBodyGyroJerkMagstd 
	An average of fBodyBodyGyroJerkMag-std() for a subject and activity
	*see above section for details on original measurement

MeanOffBodyBodyGyroMagmean 
	An average of fBodyBodyGyroMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOffBodyBodyGyroMagstd 
	An average of fBodyBodyGyroMag-std() for a subject and activity
	*see above section for details on original measurement

MeanOffBodyGyromeanX 
	An average of fBodyGyro-mean()-X for a subject and activity
	*see above section for details on original measurement

MeanOffBodyGyromeanY 
	An average of fBodyGyro-mean()-Y for a subject and activity
	*see above section for details on original measurement

MeanOffBodyGyromeanZ 
	An average of fBodyGyro-mean()-Z for a subject and activity
	*see above section for details on original measurement

MeanOffBodyGyrostdX 
	An average of fBodyGyro-std()-X for a subject and activity
	*see above section for details on original measurement

MeanOffBodyGyrostdY 
	An average of fBodyGyro-std()-Y for a subject and activity
	*see above section for details on original measurement

MeanOffBodyGyrostdZ 
	An average of fBodyGyro-std()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccmeanX 
	An average of tBodyAcc-mean()-X for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccmeanY 
	An average of tBodyAcc-mean()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccmeanZ 
	An average of tBodyAcc-mean()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccstdX 
	An average of tBodyAcc-std()-X for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccstdY 
	An average of tBodyAcc-std()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccstdZ 
	An average of tBodyAcc-std()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccJerkmeanX 
	An average of tBodyAccJerk-mean()-X for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccJerkmeanY 
	An average of tBodyAccJerk-mean()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccJerkmeanZ 
	An average of tBodyAccJerk-mean()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccJerkstdX 
	An average of tBodyAccJerk-std()-X for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccJerkstdY 
	An average of tBodyAccJerk-std()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccJerkstdZ 
	An average of tBodyAccJerk-std()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccJerkMagmean 
	An average of tBodyAccJerkMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccJerkMagstd 
	An average of tBodyAccJerkMag-std() for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccMagmean 
	An average of tBodyAccMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOftBodyAccMagstd 
	An average of tBodyAccMag-std() for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyromeanX 
	An average of tBodyGyro-mean()-X for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyromeanY 
	An average of tBodyGyro-mean()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyromeanZ 
	An average of tBodyGyro-mean()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyrostdX 
	An average of tBodyGyro-std()-X for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyrostdY 
	An average of tBodyGyro-std()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyrostdZ 
	An average of tBodyGyro-std()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroJerkmeanX 
	An average of tBodyGyroJerk-mean()-X for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroJerkmeanY 
	An average of tBodyGyroJerk-mean()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroJerkmeanZ 
	An average of tBodyGyroJerk-mean()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroJerkstdX 
	An average of tBodyGyroJerk-std()-X for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroJerkstdY 
	An average of tBodyGyroJerk-std()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroJerkstdZ 
	An average of tBodyGyroJerk-std()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroJerkMagmean 
	An average of tBodyGyroJerkMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroJerkMagstd 
	An average of tBodyGyroJerkMag-std() for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroMagmean 
	An average of tBodyGyroMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOftBodyGyroMagstd 
	An average of tBodyGyroMag-std() for a subject and activity
	*see above section for details on original measurement

MeanOftGravityAccmeanX 
	An average of tGravityAcc-mean()-X for a subject and activity
	*see above section for details on original measurement

MeanOftGravityAccmeanY 
	An average of tGravityAcc-mean()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftGravityAccmeanZ 
	An average of tGravityAcc-mean()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftGravityAccstdX 
	An average of tGravityAcc-std()-X for a subject and activity
	*see above section for details on original measurement

MeanOftGravityAccstdY 
	An average of tGravityAcc-std()-Y for a subject and activity
	*see above section for details on original measurement

MeanOftGravityAccstdZ 
	An average of tGravityAcc-std()-Z for a subject and activity
	*see above section for details on original measurement

MeanOftGravityAccMagmean 
	An average of tGravityAccMag-mean() for a subject and activity
	*see above section for details on original measurement

MeanOftGravityAccMagstd
	An average of tGravityAccMag-std() for a subject and activity
	*see above section for details on original measurement


===================================================================================
Study Design (Instruction List or Summary Choices to get from raw data to this dataset):

Inputs: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip which originally came from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.  Here you can find a full description of the data.  At a basic level, the data is a set of measurements taken when subjects were performing certain activities.

The data files used for this summarized data set include:
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'features.txt': List of all features.

Processing Steps:

- 1. Run the run_analysis.R file by typing these commands in R:
	a. source("run_analysis.R")
	b. run_analysis()
- 2. Ouput files will get created:
	a. outputDataset1.txt (the full dataset)
	b. outputDataset2.txt (a summary of the full dataset with averages calculated on each measure by Subject and activity

run_analysis.R contains all of the instructions to get from the raw data to the 
summarized data. Below is an explanation of the steps:

  ## Step 1: get the dataset files, if there are not already in the working directory
  ## Step 2: put the train data together (subject, activity, and measures).  
  ##		These 3 files contain the same number of rows, so they are put together
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

===================================================================================
ORIGINAL DATASOURCE:

This dataset is derived from the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The original dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about the original dataset contact: activityrecognition@smartlab.ws
===================================================================================
