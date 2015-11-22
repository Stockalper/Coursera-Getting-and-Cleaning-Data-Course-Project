# Coursera Johns Hopkins University Data Science
# Getting and Cleaning Data
# 21.11.2015

# Course Project


# 0 ----------------------------------------------------------------------------
library(reshape2)

# expected folder structure
# ./UCI HAR Dataset/
# ./run_analysis.R
# ./DataSet_Tidy.txt

# setwd("")

# DataSet_Tidy <-  read.table("./DataSet_Tidy.txt", header= TRUE)



# 1 ----------------------------------------------------------------------------
# read data

test_subject_raw <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_activity_raw <- read.table("./UCI HAR Dataset/test/Y_test.txt")
test_data_raw <- read.table("./UCI HAR Dataset/test/X_test.txt")

train_subject_raw <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train_activity_raw <- read.table("./UCI HAR Dataset/train/Y_train.txt")
train_data_raw <- read.table("./UCI HAR Dataset/train/X_train.txt")

Features <- read.table("./UCI HAR Dataset/features.txt")
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")

# inspect data  

# str(test_subject_raw)
# str(test_activity_raw)
# str(test_data_raw)
# 
# str(train_subject_raw)
# str(train_activity_raw)
# str(train_data_raw)
# 
# str(Features)
# str(ActivityLabels)



# 2 ----------------------------------------------------------------------------
# prepare data frames

# "subject" data frame
df_subject <- rbind(test_subject_raw, train_subject_raw)
colnames(df_subject) <- "subject"

# "activity" data frame
df_activity <- rbind(test_activity_raw, train_activity_raw)
colnames(df_activity) <- "activity"

# "data" data frame
df_data <- rbind(test_data_raw, train_data_raw)

# select data with mean() or std() in measurement variable name
Features_MeanStd_Indices <- grep("-(mean|std)\\(\\)",Features[,2])
df_data_selection <- df_data[,Features_MeanStd_Indices]

# create "nice" variable names
Features_Names <- Features[Features_MeanStd_Indices,2]
Features_Names_Nice <- gsub("-","_", Features_Names)
Features_Names_Nice <- gsub("\\(|\\)","", Features_Names_Nice)
colnames(df_data_selection) <- Features_Names_Nice



# 3 ----------------------------------------------------------------------------
# combine data frames: subject, activity, data

df_dataset <- cbind(df_subject,df_activity, df_data_selection)

# create "nice" activity names 
df_dataset$activity<- factor(df_dataset$activity, 
                             levels = ActivityLabels[,1], 
                             labels = tolower(ActivityLabels[,2]))



# 4 ----------------------------------------------------------------------------
# create tidy data set

df_dataset_melted <- melt(df_dataset, id = c("subject", "activity"))

df_dataset_mean <- dcast(df_dataset_melted, 
                         subject + activity ~ variable,
                         mean)

write.table(df_dataset_mean, "DataSet_Tidy.txt", 
            row.names = FALSE, quote = FALSE)


