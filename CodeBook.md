#JagSTAR: Coursera - Getting and Cleaning Data Assignment 
##CodeBook for table: TidyData - JagSTAR

###Description of study
Description: Using an embedded Accelerometer and Gyroscope in the Samsung Galaxy S II mounted on the waste of the subjects, data on 30 volunteers performing 6 Activities were recorded by the following group:  

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

###Description of process from moving from raw data to tidy data
The "TidyData - JagSTAR.txt" file contains a table with tidy data derived from the processing of raw data from the mentioned study above. The raw data is downloadable from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and described at "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones".

There were 561 variables that were measured or computed from the readings taken via the accelerometer and gyroscope and multiple instances of the same variables for the same Activity measured with the same Subject. 

The Variables measured during the study were filtered to only include the mean and standard deviation values such that no variable measured in the original raw data was included in the tidy data that excluded any instance of the terms "mean" or "std". These variables surmise the variables described below with the exception of the addition of the two variables "ActivityNames" and "SubjectIDs". 

Once the data was filtered it was seperated into tables one for each Activity and each Subject. The mean of each of the filtered variables was computed for each table. The tables were subsequently recombined to give the final data set. 

###Description of Variables
There are a total of 88 variables for the tidy data set that will be described below.  

####Record Identifiers: Used to identify record

* SubjectIDs: A unique identifier indicating the Subject who the measurements were taken on.

* ActivityNames: Acitivities Performed by the Subject 
	* Laying: Measurements were taken while Subject was Laying 
	* Sitting: Measurements were taken while Subject was Sitting
	* Standing: Measurements were taken while Subject was Standing
	* Walking: Measurements were taken while Subject was Walking
	* WalkingDownstairs: Measurements were taken while Subject was WalkingDownstairs
	* WalkingUpstairs: Measurements were taken while Subject was WalkingUpstairs


####Measurements: Values acquired for record

** * Note: **
	* prefix t denotes a time domain measurement
	* prefix f denotes a fourier domain measurement
	* Std - Standard Deviation 
	* Measurements can include Vectors

* "tBodyAcc-mean()-X": Mean of Mean of Body Acceleration Signal During Activity in X Direction
* "tBodyAcc-mean()-Y": Mean of Mean of Body Acceleration Signal During Activity in Y Direction
* "tBodyAcc-mean()-Z": Mean of Mean of Body Acceleration Signal During Activity in Z Direction
* "tBodyAcc-std()-X": Std of Std of Body Acceleration Signal During Activity in X Direction
* "tBodyAcc-std()-Y": Std of Std of Body Acceleration Signal During Activity in Y Direction
* "tBodyAcc-std()-Z": Std of Std of Body Acceleration Signal During Activity in Z Direction
* "tGravityAcc-mean()-X": Mean of Mean of Body Acceleration Signal During Activity in X Direction
* "tGravityAcc-mean()-Y": Mean of Mean of Gravity Acceleration Signal During Activity in Y Direction
* "tGravityAcc-mean()-Z": Mean of Mean of Gravity Acceleration Signal During Activity in Z Direction
* "tGravityAcc-std()-X": Std of Std of Gravity Acceleration Signal During Activity in X Direction
* "tGravityAcc-std()-Y": Std of Std of Gravity Acceleration Signal During Activity in Y Direction
* "tGravityAcc-std()-Z": Std of Std of Gravity Acceleration Signal During Activity in Z Direction
* "tBodyAccJerk-mean()-X": Mean of Mean of Body Jerk Acceleration Signal During Activity in X Direction
* "tBodyAccJerk-mean()-Y": Mean of Mean of Body Jerk Acceleration Signal During Activity in Y Direction
* "tBodyAccJerk-mean()-Z": Mean of Mean of Body Jerk Acceleration Signal During Activity in Z Direction
* "tBodyAccJerk-std()-X": Std of Std of Body Jerk Acceleration Signal During Activity in X Direction
* "tBodyAccJerk-std()-Y": Std of Std of Body Jerk Acceleration Signal During Activity in Y Direction
* "tBodyAccJerk-std()-Z": Std of Std of Body Jerk Acceleration Signal During Activity in Z Direction
* "tBodyGyro-mean()-X": Mean of Mean of Body Angular Acceleration Signal During Activity in X Direction
* "tBodyGyro-mean()-Y": Mean of Mean of Body Angular Acceleration Signal During Activity in Y Direction
* "tBodyGyro-mean()-Z": Mean of Mean of Body Angular Acceleration Signal During Activity in Z Direction
* "tBodyGyro-std()-X": Std of Std of Body Angular Acceleration Signal During Activity in X Direction
* "tBodyGyro-std()-Y": Std of Std of Body Angular Acceleration Signal During Activity in Y Direction
* "tBodyGyro-std()-Z": Std of Std of Body Angular Acceleration Signal During Activity in Z Direction
* "tBodyGyroJerk-mean()-X": Mean of Mean of Body Jerk Angular Acceleration Signal During Activity in X Direction
* "tBodyGyroJerk-mean()-Y": Mean of Mean of Body Jerk Angular Acceleration Signal During Activity in Y Direction
* "tBodyGyroJerk-mean()-Z": Mean of Mean of Body Jerk Angular Acceleration Signal During Activity in Z Direction
* "tBodyGyroJerk-std()-X": Std of Std of Body Jerk Angular Acceleration Signal During Activity in X Direction
* "tBodyGyroJerk-std()-Y": Std of Std of Body Jerk Angular Acceleration Signal During Activity in Y Direction
* "tBodyGyroJerk-std()-Z": Std of Std of Body Jerk Angular Acceleration Signal During Activity in Z Direction
* "tBodyAccMag-mean()": Mean of Mean of Magnitude of Body Acceleration Signal During Activity
* "tBodyAccMag-std()": Std of Std of Magnitude of Body Acceleration Signal During Activity
* "tGravityAccMag-mean()": Mean of Mean of Magnitude of Gravity Acceleration Signal During Activity
* "tGravityAccMag-std()": Std of Std of Magnitude of Gravity Acceleration Signal During Activity
* "tBodyAccJerkMag-mean()": Mean of Mean of Magnitude of Body Jerk Acceleration Signal During Activity
* "tBodyAccJerkMag-std()": Std of Std of Magnitude of Body Jerk Acceleration Signal During Activity
* "tBodyGyroMag-mean()": Mean of Mean of Magnitude of Body Angular Acceleration Signal During Activity
* "tBodyGyroMag-std()": Std of Std of Magnitude of Body Angular Acceleration Signal During Activity
* "tBodyGyroJerkMag-mean()": Mean of Mean of Magnitude of Body Jerk Angular Acceleration Signal During Activity
* "tBodyGyroJerkMag-std()": Std of Std of Magnitude of Body Jerk Angular Acceleration Signal During Activity
* "fBodyAcc-mean()-X": Mean of Mean of Body Acceleration Signal During Activity in X Direction
* "fBodyAcc-mean()-Y": Mean of Mean of Body Acceleration Signal During Activity in Y Direction
* "fBodyAcc-mean()-Z": Mean of Mean of Body Acceleration Signal During Activity in Z Direction
* "fBodyAcc-std()-X": Std of Std of Body Acceleration Signal During Activity in X Direction
* "fBodyAcc-std()-Y": Std of Std of Body Acceleration Signal During Activity in Y Direction
* "fBodyAcc-std()-Z": Std of Std of Body Acceleration Signal During Activity in Z Direction
* "fBodyAcc-meanFreq()-X": Mean of Mean Frequency of Body Acceleration Signal During Activity in X Direction
* "fBodyAcc-meanFreq()-Y": Mean of Mean Frequency of Body Acceleration Signal During Activity in Y Direction
* "fBodyAcc-meanFreq()-Z": Mean of Mean Frequency of Body Acceleration Signal During Activity in Z Direction
* "fBodyAccJerk-mean()-X": Mean of Mean of Body Jerk Acceleration Signal During Activity in X Direction
* "fBodyAccJerk-mean()-Y": Mean of Mean of Body Jerk Acceleration Signal During Activity in Y Direction
* "fBodyAccJerk-mean()-Z": Mean of Mean of Body Jerk Acceleration Signal During Activity in Z Direction
* "fBodyAccJerk-std()-X": Std of Std of Body Jerk Acceleration Signal During Activity in X Direction
* "fBodyAccJerk-std()-Y": Std of Std of Body Jerk Acceleration Signal During Activity in Y Direction
* "fBodyAccJerk-std()-Z": Std of Std of Body Jerk Acceleration Signal During Activity in Z Direction
* "fBodyAccJerk-meanFreq()-X": Std of Mean Frequency Body Jerk Acceleration Signal During Activity in X Direction
* "fBodyAccJerk-meanFreq()-Y" Std of Mean Frequency of Body Jerk Acceleration Signal During Activity in Y Direction
* "fBodyAccJerk-meanFreq()-Z": Std of Mean Frequency of Body Jerk Acceleration Signal During Activity in Z Direction
* "fBodyGyro-mean()-X": Mean of Mean of Body Angular Acceleration Signal During Activity in X Direction
* "fBodyGyro-mean()-Y": Mean of Mean of Body Angular Acceleration Signal During Activity in Y Direction
* "fBodyGyro-mean()-Z": Mean of Mean of Body Angular Acceleration Signal During Activity in Z Direction
* "fBodyGyro-std()-X": Std of Std of Body Angular Acceleration Signal During Activity in X Direction
* "fBodyGyro-std()-Y": Std of Std of Body Angular Acceleration Signal During Activity in Y Direction
* "fBodyGyro-std()-Z": Std of Std of Body Angular Acceleration Signal During Activity in Z Direction
* "fBodyGyro-meanFreq()-X": Std of Mean Frequency of Body Angular Acceleration Signal During Activity in X Direction
* "fBodyGyro-meanFreq()-Y": Std of Mean Frequency of Body Angular Acceleration Signal During Activity in Y Direction
* "fBodyGyro-meanFreq()-Z": Std of Mean Frequency of Body Angular Acceleration Signal During Activity in Z Direction
* "fBodyAccMag-mean()": Mean of Mean of Magnitude of Body Acceleration Signal During Activity
* "fBodyAccMag-std()": Std of Std of Magnitude of Body Acceleration Signal During Activity
* "fBodyAccMag-meanFreq()": Mean of Mean Frequency of Magnitude of Body Acceleration Signal During Activity
* "fBodyBodyAccJerkMag-mean()": Mean of Mean of Magnitude of Body Jerk Acceleration Signal During Activity
* "fBodyBodyAccJerkMag-std()": Std of Std of Magnitude of Body Jerk Acceleration Signal During Activity
* "fBodyBodyAccJerkMag-meanFreq()": Mean of Mean Frequency of Magnitude of Body Jerk Acceleration Signal During Activity
* "fBodyBodyGyroMag-mean()": Mean of Mean of Magnitude of Body Angular Acceleration Signal During Activity
* "fBodyBodyGyroMag-std()": Std of Std of Magnitude of Body Angular Acceleration Signal During Activity
* "fBodyBodyGyroMag-meanFreq()": Mean of Mean Frequency of Magnitude of Body Angular Acceleration Signal During Activity
* "fBodyBodyGyroJerkMag-mean()": Mean of Mean of Magnitude of Body Jerk Angular Acceleration Signal During Activity
* "fBodyBodyGyroJerkMag-std()": Std of Std of Magnitude of Body Jerk Angular Acceleration Signal During Activity
* "fBodyBodyGyroJerkMag-meanFreq()": Mean of Mean Frequency of Magnitude of Body Jerk Angular Acceleration Signal During Activity
* "angle(tBodyAccMean,gravity)": Mean of Angle between the Mean Body Acceleration measurement and the Gravity Acceleration measurement 
* "angle(tBodyAccJerkMean),gravityMean)": Mean of Angle between the Mean Body Jerk Acceleration measurement and the Mean Gravity Acceleration measurement 
* "angle(tBodyGyroMean,gravityMean)": Mean of Angle between the Mean Body Angular Acceleration measurement and the Mean Gravity Acceleration measurement 
* "angle(tBodyGyroJerkMean,gravityMean)": Mean of Angle between the Mean Body Jerk Angular Acceleration measurement and the Mean Gravity Acceleration measurement
* "angle(X,gravityMean)": Mean of Angle between the X axis and the Mean Gravity Acceleration measurement
* "angle(Y,gravityMean)": Mean of Angle between the X axis and the Mean Gravity Acceleration measurement
* "angle(Z,gravityMean)": Mean of Angle between the X axis and the Mean Gravity Acceleration measurement
