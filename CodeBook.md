# CodeBook for run_analysis.R

The table HAR_avg_data contains the following features:

> activity = one of "WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"  
 subjectid = one of 1:30 corresponding to the subjects having the activities producing the measurements
 avgtbodyaccmeanx = Average of tBodyAcc-mean()-X by activity/subjectid.
 avgtbodyaccmeany = Average of tBodyAcc-mean()-Y by activity/subjectid.
 avgtbodyaccmeanz = Average of tBodyAcc-mean()-Z by activity/subjectid.
 avgtbodyaccstdx = Average of tBodyAcc-std()-X by activity/subjectid.
 avgtbodyaccstdy = Average of tBodyAcc-std()-Y by activity/subjectid.
 avgtbodyaccstdz = Average of tBodyAcc-std()-Z by activity/subjectid.
 avgtgravityaccmeanx = Average of tGravityAcc-mean()-X by activity/subjectid.
 avgtgravityaccmeany = Average of tGravityAcc-mean()-Y by activity/subjectid.
 avgtgravityaccmeanz = Average of tGravityAcc-mean()-Z by activity/subjectid.
 avgtgravityaccstdx = Average of tGravityAcc-std()-X by activity/subjectid.
 avgtgravityaccstdy = Average of tGravityAcc-std()-Y by activity/subjectid.
 avgtgravityaccstdz = Average of tGravityAcc-std()-Z by activity/subjectid.
 avgtbodyaccjerkmeanx = Average of tBodyAccJerk-mean()-X by activity/subjectid.
 avgtbodyaccjerkmeany = Average of tBodyAccJerk-mean()-Y by activity/subjectid.
 avgtbodyaccjerkmeanz = Average of tBodyAccJerk-mean()-Z by activity/subjectid.
 avgtbodyaccjerkstdx = Average of tBodyAccJerk-std()-X by activity/subjectid.
 avgtbodyaccjerkstdy = Average of tBodyAccJerk-std()-Y by activity/subjectid.
 avgtbodyaccjerkstdz = Average of tBodyAccJerk-std()-Z by activity/subjectid.
 avgtbodygyromeanx = Average of tBodyGyro-mean()-X by activity/subjectid.
 avgtbodygyromeany = Average of tBodyGyro-mean()-Y by activity/subjectid.
 avgtbodygyromeanz = Average of tBodyGyro-mean()-Z by activity/subjectid.
 avgtbodygyrostdx = Average of tBodyGyro-std()-X by activity/subjectid.
 avgtbodygyrostdy = Average of tBodyGyro-std()-Y by activity/subjectid.
 avgtbodygyrostdz = Average of tBodyGyro-std()-Z by activity/subjectid.
 avgtbodygyrojerkmeanx = Average of tBodyGyroJerk-mean()-X by activity/subjectid.
 avgtbodygyrojerkmeany = Average of tBodyGyroJerk-mean()-Y by activity/subjectid.
 avgtbodygyrojerkmeanz = Average of tBodyGyroJerk-mean()-Z by activity/subjectid.
 avgtbodygyrojerkstdx = Average of tBodyGyroJerk-std()-X by activity/subjectid.
 avgtbodygyrojerkstdy = Average of tBodyGyroJerk-std()-Y by activity/subjectid.
 avgtbodygyrojerkstdz = Average of tBodyGyroJerk-std()-Z by activity/subjectid.
 avgtbodyaccmagmean = Average of tBodyAccMag-mean() by activity/subjectid.
 avgtbodyaccmagstd = Average of tBodyAccMag-std() by activity/subjectid.
 avgtgravityaccmagmean = Average of tGravityAccMag-mean() by activity/subjectid.
 avgtgravityaccmagstd = Average of tGravityAccMag-std() by activity/subjectid.
 avgtbodyaccjerkmagmean = Average of tBodyAccJerkMag-mean() by activity/subjectid.
 avgtbodyaccjerkmagstd = Average of tBodyAccJerkMag-std() by activity/subjectid.
 avgtbodygyromagmean = Average of tBodyGyroMag-mean() by activity/subjectid.
 avgtbodygyromagstd = Average of tBodyGyroMag-std() by activity/subjectid.
 avgtbodygyrojerkmagmean = Average of tBodyGyroJerkMag-mean() by activity/subjectid.
 avgtbodygyrojerkmagstd = Average of tBodyGyroJerkMag-std() by activity/subjectid.
 avgfbodyaccmeanx = Average of fBodyAcc-mean()-X by activity/subjectid.
 avgfbodyaccmeany = Average of fBodyAcc-mean()-Y by activity/subjectid.
 avgfbodyaccmeanz = Average of fBodyAcc-mean()-Z by activity/subjectid.
 avgfbodyaccstdx = Average of fBodyAcc-std()-X by activity/subjectid.
 avgfbodyaccstdy = Average of fBodyAcc-std()-Y by activity/subjectid.
 avgfbodyaccstdz = Average of fBodyAcc-std()-Z by activity/subjectid.
 avgfbodyaccmeanfreqx = Average of fBodyAcc-meanFreq()-X by activity/subjectid.
 avgfbodyaccmeanfreqy = Average of fBodyAcc-meanFreq()-Y by activity/subjectid.
 avgfbodyaccmeanfreqz = Average of fBodyAcc-meanFreq()-Z by activity/subjectid.
 avgfbodyaccjerkmeanx = Average of fBodyAccJerk-mean()-X by activity/subjectid.
 avgfbodyaccjerkmeany = Average of fBodyAccJerk-mean()-Y by activity/subjectid.
 avgfbodyaccjerkmeanz = Average of fBodyAccJerk-mean()-Z by activity/subjectid.
 avgfbodyaccjerkstdx = Average of fBodyAccJerk-std()-X by activity/subjectid.
 avgfbodyaccjerkstdy = Average of fBodyAccJerk-std()-Y by activity/subjectid.
 avgfbodyaccjerkstdz = Average of fBodyAccJerk-std()-Z by activity/subjectid.
 avgfbodyaccjerkmeanfreqx = Average of fBodyAccJerk-meanFreq()-X by activity/subjectid.
 avgfbodyaccjerkmeanfreqy = Average of fBodyAccJerk-meanFreq()-Y by activity/subjectid.
 avgfbodyaccjerkmeanfreqz = Average of fBodyAccJerk-meanFreq()-Z by activity/subjectid.
 avgfbodygyromeanx = Average of fBodyGyro-mean()-X by activity/subjectid.
 avgfbodygyromeany = Average of fBodyGyro-mean()-Y by activity/subjectid.
 avgfbodygyromeanz = Average of fBodyGyro-mean()-Z by activity/subjectid.
 avgfbodygyrostdx = Average of fBodyGyro-std()-X by activity/subjectid.
 avgfbodygyrostdy = Average of fBodyGyro-std()-Y by activity/subjectid.
 avgfbodygyrostdz = Average of fBodyGyro-std()-Z by activity/subjectid.
 avgfbodygyromeanfreqx = Average of fBodyGyro-meanFreq()-X by activity/subjectid.
 avgfbodygyromeanfreqy = Average of fBodyGyro-meanFreq()-Y by activity/subjectid.
 avgfbodygyromeanfreqz = Average of fBodyGyro-meanFreq()-Z by activity/subjectid.
 avgfbodyaccmagmean = Average of fBodyAccMag-mean() by activity/subjectid.
 avgfbodyaccmagstd = Average of fBodyAccMag-std() by activity/subjectid.
 avgfbodyaccmagmeanfreq = Average of fBodyAccMag-meanFreq() by activity/subjectid.
 avgfbodybodyaccjerkmagmean = Average of fBodyBodyAccJerkMag-mean() by activity/subjectid.
 avgfbodybodyaccjerkmagstd = Average of fBodyBodyAccJerkMag-std() by activity/subjectid.
 avgfbodybodyaccjerkmagmeanfreq = Average of fBodyBodyAccJerkMag-meanFreq() by activity/subjectid.
 avgfbodybodygyromagmean = Average of fBodyBodyGyroMag-mean() by activity/subjectid.
 avgfbodybodygyromagstd = Average of fBodyBodyGyroMag-std() by activity/subjectid.
 avgfbodybodygyromagmeanfreq = Average of fBodyBodyGyroMag-meanFreq() by activity/subjectid.
 avgfbodybodygyrojerkmagmean = Average of fBodyBodyGyroJerkMag-mean() by activity/subjectid.
 avgfbodybodygyrojerkmagstd = Average of fBodyBodyGyroJerkMag-std() by activity/subjectid.
 avgfbodybodygyrojerkmagmeanfreq = Average of fBodyBodyGyroJerkMag-meanFreq() by activity/subjectid. 

The feature mentioned in "Average of .... by activity/subjectid" is a feature listed in the original dataset file "features.txt". See the README.txt file for an explanation of how these are constructed.

The average is over the values present in "test/X_test.txt"and "train/X_train.txt" original data files.
The activities corresponding to each observation in "test/X_test.txt" come from "test/y_test.txt".
The subjectids performing the activities that give rise to observations come from "test/subject_test.txt".
Respectively for the "train" set.

The procedure (in detail in the accompanying run_analysis.R) is:
> read the table of activity names from "activities.txt"
 read the table of features names from "features.txt"
 For "test", "train"
     read the table of observations X_....txt,
          the table of activities y_....txt (each row corresponds to its equivalent in X_....txt)
          the table of subject ids subject_....txt
              (each row corresponds to the subject performing the activity in the corresponding row in y_.....txt giving rise to the observation in same row in X_...txt)
     create a table (subject,y,X) -- this yields 563 features (561 from X)
 append "train" table to "test" table creating just one set of observations
 create a list of the "needed features" = all features whose name includes "mean" or "std"
 subset the needed features + activity and subjectid from the joint set of observations
 replace the activity codes with the corresponding values from the table of activity names

Use this to create the table of aggregate averages by activity/subjectid described above.


