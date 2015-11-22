# Getting and Cleaning Data Course Project 
by Johns Hopkins University on Coursera
11.21.2015 getdata-034


This is the repository for the project of the "Getting and Cleaning Data" course on Coursera.  


## Files in this Repository

* The `README.md` explains the purpose of the repository and its files
* The `CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data 
* The `run_analysis.R` contains the R code to perform the project tasks 


## Project Tasks

Create one R script called run_analysis.R that does the following:

1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject 


## Project Data

The data for the project was downloaded from the following link: 

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

A full description of the data can be found here:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)



## Additional Information

The run_analysis.R script assumes that the data is unzipped and in the following file structure:

./run_analysis.R
./UCI HAR Dataset/

The code was written and run in RStudio Version 0.99.486 with 
R Version R i386 3.2.2 installed.