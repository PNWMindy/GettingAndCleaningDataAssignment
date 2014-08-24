==================================================================
Average of Human Activity Recognition Using Smartphones by Subject and Activity Dataset
Version 1.0
==================================================================
This dataset uses as an input, the Human Activity Recognition Using Smartphones Dataset Version 1.0, and was put together to find averages of various mean() and std() measures of this dataset by Subject and Activity.

Information on the original dataset: 
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details."

==================================================================

For each record it is provided:
======================================
 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- A mean of various mean() and std() time and frequency domain variables.

The dataset includes the following files:
=========================================
- 'README.md'

- 'CodeBook.md': Provides information about the variables used in the outputDataset2.txt and the study design.

- 'run_Analysis.R': processing instructions to download the source files, process them, and produce the output datasets.  For the specifics of what the analysis file does, read the Study Design section of CodeBook.md.  This information is not repeated here in the README.md for elimination of redundancy.

- 'outputDataset1.txt': intermediate dataset - only used to derive outputDataset2.txt. Descriptions in the CodeBook refer to outputDataset2.txt.

- 'outputDataset2.txt': dataset containing averages of various mean() and std() measures of the originalset by Subject and Activity.


===================================================================================
ORIGINAL DATASOURCE:

This dataset is derived from the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The original dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

For more information about the original dataset contact: activityrecognition@smartlab.ws
===================================================================================
 