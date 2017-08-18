## Peer-graded Assignment: Getting and Cleaning Data Course Project
#
# Process the UCI HAR dataset to:
# 1. Merge the training and the test sets to create one data set.
# 2. Extract only the measurements on the mean and standard deviation for each measurement.
# 3. Use descriptive activity names to name the activities in the data set
# 4. Appropriately label the data set with descriptive variable names.
# 5. From the data set in step 4, create a second, independent tidy data set with the average
#    of each variable for each activity and each subject.

## First define some helper functions for reading in the data

retrieve_UCI_HAR_dataset <- function(destfile="UCI_HAR_Dataset.zip") {
    rtv <- download.file(
            "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
            destfile,
            method="curl",
            quiet=TRUE
            )
    rtv
}

read_features_data <- function(dataset_zip="UCI_HAR_Dataset.zip") {
    ## function returns a dataframe with the features data
    
    t <- read.table(unz(dataset_zip,"UCI HAR Dataset/features.txt"),
                    sep=" ",header=FALSE,stringsAsFactors=FALSE,
                    colClasses=c("integer","character")
                    )
    names(t) <- c("featurenumber","feature")
    t
}

read_activity_labels <- function(dataset_zip="UCI_HAR_Dataset.zip") {
    ## function returns a dataframe with the activity labels data
    
    t <- read.table(unz(dataset_zip,"UCI HAR Dataset/activity_labels.txt"),
                    sep=" ",header=FALSE,stringsAsFactors=FALSE,
                    colClasses=c("integer","character")
    )
    names(t) <- c("activitynumber","activity")
    t
}

read_X <- function(dataset_zip="UCI_HAR_Dataset.zip",instance="test"){
    ## function returns a dataframe with the X data for either "test" or "train" instance
    
    t <- read.table(unz(dataset_zip,paste0("UCI HAR Dataset/",instance,"/X_",instance,".txt")),
                    header=FALSE,stringsAsFactors=FALSE,colClasses=c("numeric"),
                    fill=TRUE
    )
    t
    
}

read_y <- function(dataset_zip="UCI_HAR_Dataset.zip",instance="test"){
    ## function returns a dataframe with the y labels (activities) for either "test" or "train" instance
    
    t <- read.table(unz(dataset_zip,paste0("UCI HAR Dataset/",instance,"/y_",instance,".txt")),
                    sep=" ",header=FALSE,stringsAsFactors=FALSE,colClasses=c("integer")
    )
    t
    
}

read_subject <- function(dataset_zip="UCI_HAR_Dataset.zip",instance="test"){
    ## function returns a dataframe with the y labels (activities) for either "test" or "train" instance
    
    t <- read.table(unz(dataset_zip,paste0("UCI HAR Dataset/",instance,"/subject_",instance,".txt")),
                    sep=" ",header=FALSE,stringsAsFactors=FALSE,colClasses=c("integer")
    )
    t
    
}
## MAIN PROGRAM
# Store the data set locally in a temporary folder if you don't already have the .zip
UCI_HAR_zip_filename <- "UCI_HAR_Dataset.zip"
if (!file.exists(UCI_HAR_zip_filename)) {
    UCI_HAR_zip_filename <- tempfile(pattern = "HAR", tmpdir = tempdir(), fileext = "")
    if (retrieve_UCI_HAR_dataset(destfile=UCI_HAR_zip_filename)) {
        stop("Could not retrieve the UCI HAR dataset")
    }
}

# read the data
features_df <- read_features_data(UCI_HAR_zip_filename)
activities_f <- read_activity_labels(UCI_HAR_zip_filename)
X_test <- read_X(UCI_HAR_zip_filename,"test")
X_train <- read_X(UCI_HAR_zip_filename,"train")
y_test <- read_y(UCI_HAR_zip_filename,"test")
y_train <- read_y(UCI_HAR_zip_filename,"train")
subject_test <- read_subject(UCI_HAR_zip_filename,"test")
subject_train <- read_subject(UCI_HAR_zip_filename,"train")

# 1. merge the train and test datasets
test_data <- cbind(subject_test,y_test,X_test)
names(test_data) <- c("subjectid","activity",paste0("X.",features_df$featurenumber))
train_data <- cbind(subject_train,y_train,X_train)
names(train_data) <- c("subjectid","activity",paste0("X.",features_df$featurenumber))
                      
HAR_data <- rbind(train_data,test_data)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement
needed_features <- grep("mean|std",features_df$feature)
needed_features_l <- grepl("mean|std",features_df$feature)
HAR_data <- select(HAR_data,subjectid,activity,paste0("X.",features_df[needed_features_l,]$featurenumber))

# 3. Use descriptive activity names
HAR_data$activity <- sapply(HAR_data$activity,function(x) activities_f[x,]$activity)

# 4. Label descriptively
#    Here we use the original column names, but set to lower case and remove "-","(, and ")" characters
#    The original feature names were reasonably informative about the nature of the variable
names(HAR_data) <- c("subjectid","activity",
                     gsub("-|\\(|\\)","",
                          tolower(
                              features_df[gsub("X.","",names(HAR_data)
                                               [3:length(names(HAR_data))]),]$feature
                              )
                          )
                    )
# 5. Tidy data set containing average for each activity/subject
HAR_avg_data <- aggregate(HAR_data,by=list(HAR_data$activity,HAR_data$subjectid),FUN=mean)
HAR_avg_data <- select(HAR_avg_data,-.data$activity,-.data$subjectid)
names(HAR_avg_data)[[1]] <- "activity"
names(HAR_avg_data)[[2]] <- "subjectid"
# The feature names here should reflect the fact they are averages, so adjust the names
names(HAR_avg_data)[3:length(names(HAR_avg_data))] <- paste0("avg",names(HAR_avg_data)[3:length(names(HAR_avg_data))])
# produce required output in a file
write.table(HAR_avg_data,file="./HAR_average_data.txt",row.names=FALSE)

## End of program -- remove data set
if (UCI_HAR_zip_filename != "./UCI_HAR_Dataset.zip") file.remove(UCI_HAR_zip_filename)