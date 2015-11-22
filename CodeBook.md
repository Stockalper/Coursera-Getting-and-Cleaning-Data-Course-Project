# CodeBook

Getting and Cleaning Data Course Project 
by Johns Hopkins University on Coursera
11.21.2015 getdata-034

This is the code book which describes the variables, the data, and any transformations or work that was performed to clean up the data.


## Data Source

Human Activity Recognition Using Smartphones Dataset
Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


## Original Description of the Raw Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.



## Creating the tidy data set

### Guide to create the tidy data set file
1. Download and unzip the original data set to the folder: `./UCI HAR Dataset`
2. Save the `run_analysis.R` to the parent folder of ./UCI HAR Dataset and load file in RStudio (or R)
3. Set the working directory to the parent folder of ./UCI HAR Dataset
4. Run the script run_analysis.R wich creates the `DataSet_Tidy.txt` file

Note: The Package reshape2 needs to be installed 

### Cleaning of the data
Short, high-level description of what the cleaning script does:
* Loads the data into R (subject_test.txt, Y_test.txt, X_test.txt, subject_train.txt, Y_train.txt, X_train.txt, features.txt, activity_labels.txt)
* Extracts only the measurements on the mean and standard deviation for each measurement
* Renames the measurement variable names
* Combines the data frames: subject, activity, data
* Renames the activity names
* Creates and saves the tidy data set

## Description of the variables in the DataSet_Tidy.txt file
`subject` - id of the experiment subject

`activity` - type of activity performed by the subjects:
* walking
* walking_upstairs
* walking_downstairs
* sitting
* standing
* laying    

`Measurement variables` - average
* tBodyAcc_mean_X          
* tBodyAcc_mean_Y          
* tBodyAcc_mean_Z          
* tBodyAcc_std_X           
* tBodyAcc_std_Y           
* tBodyAcc_std_Z           
* tGravityAcc_mean_X       
* tGravityAcc_mean_Y       
* tGravityAcc_mean_Z       
* tGravityAcc_std_X        
* tGravityAcc_std_Y        
* tGravityAcc_std_Z        
* tBodyAccJerk_mean_X      
* tBodyAccJerk_mean_Y      
* tBodyAccJerk_mean_Z      
* tBodyAccJerk_std_X       
* tBodyAccJerk_std_Y       
* tBodyAccJerk_std_Z       
* tBodyGyro_mean_X         
* tBodyGyro_mean_Y         
* tBodyGyro_mean_Z         
* tBodyGyro_std_X          
* tBodyGyro_std_Y          
* tBodyGyro_std_Z          
* tBodyGyroJerk_mean_X     
* tBodyGyroJerk_mean_Y     
* tBodyGyroJerk_mean_Z     
* tBodyGyroJerk_std_X      
* tBodyGyroJerk_std_Y      
* tBodyGyroJerk_std_Z      
* tBodyAccMag_mean         
* tBodyAccMag_std          
* tGravityAccMag_mean      
* tGravityAccMag_std       
* tBodyAccJerkMag_mean     
* tBodyAccJerkMag_std      
* tBodyGyroMag_mean        
* tBodyGyroMag_std         
* tBodyGyroJerkMag_mean    
* tBodyGyroJerkMag_std     
* fBodyAcc_mean_X          
* fBodyAcc_mean_Y          
* fBodyAcc_mean_Z          
* fBodyAcc_std_X           
* fBodyAcc_std_Y           
* fBodyAcc_std_Z           
* fBodyAccJerk_mean_X      
* fBodyAccJerk_mean_Y      
* fBodyAccJerk_mean_Z      
* fBodyAccJerk_std_X       
* fBodyAccJerk_std_Y       
* fBodyAccJerk_std_Z       
* fBodyGyro_mean_X         
* fBodyGyro_mean_Y         
* fBodyGyro_mean_Z         
* fBodyGyro_std_X          
* fBodyGyro_std_Y          
* fBodyGyro_std_Z          
* fBodyAccMag_mean         
* fBodyAccMag_std          
* fBodyBodyAccJerkMag_mean 
* fBodyBodyAccJerkMag_std  
* fBodyBodyGyroMag_mean    
* fBodyBodyGyroMag_std     
* fBodyBodyGyroJerkMag_mean
* fBodyBodyGyroJerkMag_std








