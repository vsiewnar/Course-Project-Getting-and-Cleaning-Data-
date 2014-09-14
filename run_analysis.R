# COURSERA
# Getting and Cleaning Data Course Project
#
# We assume that we start in the folder named "UCI HAR Dataset"
#
# 1. Merges the training and the test sets to create one data set.
#
#
# Get the training data
setwd(paste0(getwd(), "/train")) 
train <- read.table("X_train.txt")

# Return to home folder
setwd("../")

# Get the test data
setwd(paste0(getwd(), "/test"))
test <- read.table("X_test.txt")

# Return to home folder
setwd("../")

# Merge the two datasets
mergedData <- rbind(test, train)


# 2. Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
#
#
# We go through the file containing the column names to find the ones that
# contain information about means and standard deviations. We then subset 
# those columns from the merged data set

# Get the column names
colNames <- read.table("features.txt")

# Find what columns have information about means
colWMean <- grep("[Mm]ean\\()", colNames[,2])

# Find what columns have information about standard deviations
colWStd <- grep("std\\()", colNames[,2])

# Join the vectors to get all the desired columns
colWMeanStd <- c(colWMean, colWStd)
colWMeanStd <- sort(colWMeanStd)

# Subset the original dataset
meanstdData <- mergedData[colWMeanStd]


# 3. Uses descriptive activity names to name the activities in the data set
#
# We look at the given names of the columns and use the given readme files 
# to give them more descriptive names
#


# Raw names of the subset columns
colNames[colWMeanStd,] 

# tBodyAcc - Body Acceleration Signal
# tGravityAcc - Gravity Acceleration Signal
# tBodyAccJerk - Body Jerk Signal (acceleration)
# tBodyGyro - Angular Velocity Signal
# tBodyGyroJerk - Body Jerk Signal (angular velocity)
# tBodyAccMag - Magnitude of Body Acceleration Signal
# tGravityAccMag - Magnitude of Gravity Acceleration Signal
# tBodyAccJerkMag - Magnitude of Body Jerk Signal (acceleration)
# tBodyGyroMag - Magnitude of Angular Velocity Signal
# tBodyGyroJerkMag - Magnitude of Body Jerk Signal (angular velocity)
# fBodyAcc - Fast Fourier Transform of Body Acceleration Signal
# fBodyAccJerk - Fast Fourier Transform of Body Jerk Signal (acceleration)
# fBodyGyro - Fast Fourier Transform of Angular Velocity Signal
# fBodyAccMag - Fast Fourier Transform of Magnitude of Body Acceleration Signal
# fBodyBodyAccJerkMag - Fast Fourier Transform of Magnitude of Body Jerk Signal (acceleration)
# fBodyBodyGyroMag - Fast Fourier Transform of Magnitude of Angular Velocity Signal
# fBodyBodyGyroJerkMag - Fast Fourier Transform of Magnitude of Body Jerk Signal (angular velocity)


# 4. Appropriately labels the data set with descriptive variable names. 
#

colnames(meanstdData)[1] <- "Mean of Body Acceleration Signal - x"
colnames(meanstdData)[2] <- "Mean of Body Acceleration Signal - y"
colnames(meanstdData)[3] <- "Mean of Body Acceleration Signal - z"
colnames(meanstdData)[4] <- "Standard Deviation of Body Acceleration Signal - x"
colnames(meanstdData)[5] <- "Standard Deviation of Body Acceleration Signal - y"
colnames(meanstdData)[6] <- "Standard Deviation of Body Acceleration Signal - z"

colnames(meanstdData)[7] <- "Mean of Gravity Acceleration Signal - x"
colnames(meanstdData)[8] <- "Mean of Gravity Acceleration Signal - y"
colnames(meanstdData)[9] <- "Mean of Gravity Acceleration Signal - z"
colnames(meanstdData)[10] <- "Standard Deviation of Gravity Acceleration Signal - x"
colnames(meanstdData)[11] <- "Standard Deviation of Gravity Acceleration Signal - y"
colnames(meanstdData)[12] <- "Standard Deviation of Gravity Acceleration Signal - z"

colnames(meanstdData)[13] <- "Mean of Body Jerk Signal (acceleration) - x"
colnames(meanstdData)[14] <- "Mean of Body Jerk Signal (acceleration) - y"
colnames(meanstdData)[15] <- "Mean of Body Jerk Signal (acceleration) - z"
colnames(meanstdData)[16] <- "Standard Deviation of Body Jerk Signal (acceleration) - x"
colnames(meanstdData)[17] <- "Standard Deviation of Body Jerk Signal (acceleration) - y"
colnames(meanstdData)[18] <- "Standard Deviation of Body Jerk Signal (acceleration) - z"

colnames(meanstdData)[19] <- "Mean of Angular Velocity Signal - x"
colnames(meanstdData)[20] <- "Mean of Angular Velocity Signal - y"
colnames(meanstdData)[21] <- "Mean of Angular Velocity Signal - z"
colnames(meanstdData)[22] <- "Standard Deviation of Angular Velocity Signal - x"
colnames(meanstdData)[23] <- "Standard Deviation of Angular Velocity Signal - y"
colnames(meanstdData)[24] <- "Standard Deviation of Angular Velocity Signal - z"

colnames(meanstdData)[25] <- "Mean of Body Jerk Signal (angular velocity) - x"
colnames(meanstdData)[26] <- "Mean of Body Jerk Signal (angular velocity) - y"
colnames(meanstdData)[27] <- "Mean of Body Jerk Signal (angular velocity) - z"
colnames(meanstdData)[28] <- "Standard Deviation of Body Jerk Signal (angular velocity) - x"
colnames(meanstdData)[29] <- "Standard Deviation of Body Jerk Signal (angular velocity) - y"
colnames(meanstdData)[30] <- "Standard Deviation of Body Jerk Signal (angular velocity) - z"

colnames(meanstdData)[31] <- "Mean of Magnitude of Body Acceleration Signal"
colnames(meanstdData)[32] <- "Standard Deviation of Magnitude of Body Acceleration Signal"

colnames(meanstdData)[33] <- "Mean of Magnitude of Gravity Acceleration Signal"
colnames(meanstdData)[34] <- "Standard Deviation of Magnitude of Gravity Acceleration Signal"

colnames(meanstdData)[35] <- "Mean of Magnitude of Body Jerk Signal (acceleration)"
colnames(meanstdData)[36] <- "Standard Deviation of Magnitude of Body Jerk Signal (acceleration)"

colnames(meanstdData)[37] <- "Mean of Magnitude of Angular Velocity Signal"
colnames(meanstdData)[38] <- "Standard Deviation of Magnitude of Angular Velocity Signal"

colnames(meanstdData)[39] <- "Mean of Magnitude of Body Jerk Signal (angular velocity)"
colnames(meanstdData)[40] <- "Standard Deviation of Magnitude of Body Jerk Signal (angular velocity)"

colnames(meanstdData)[41] <- "Mean of Fast Fourier Transform of Body Acceleration Signal - x"
colnames(meanstdData)[42] <- "Mean of Fast Fourier Transform of Body Acceleration Signal - y"
colnames(meanstdData)[43] <- "Mean of Fast Fourier Transform of Body Acceleration Signal - z"
colnames(meanstdData)[44] <- "Standard Deviation of Fast Fourier Transform of Body Acceleration Signal - x"
colnames(meanstdData)[45] <- "Standard Deviation of Fast Fourier Transform of Body Acceleration Signal - y"
colnames(meanstdData)[46] <- "Standard Deviation of Fast Fourier Transform of Body Acceleration Signal - z"

colnames(meanstdData)[47] <- "Mean of Fast Fourier Transform of Body Jerk Signal (acceleration) - x"
colnames(meanstdData)[48] <- "Mean of Fast Fourier Transform of Body Jerk Signal (acceleration) - y"
colnames(meanstdData)[49] <- "Mean of Fast Fourier Transform of Body Jerk Signal (acceleration) - z"
colnames(meanstdData)[50] <- "Standard Deviation of Fast Fourier Transform of Body Jerk Signal (acceleration) - x"
colnames(meanstdData)[51] <- "Standard Deviation of Fast Fourier Transform of Body Jerk Signal (acceleration) - y"
colnames(meanstdData)[52] <- "Standard Deviation of Fast Fourier Transform of Body Jerk Signal (acceleration) - z"

colnames(meanstdData)[53] <- "Mean of Fast Fourier Transform of Angular Velocity Signal - x"
colnames(meanstdData)[54] <- "Mean of Fast Fourier Transform of Angular Velocity Signal - y"
colnames(meanstdData)[55] <- "Mean of Fast Fourier Transform of Angular Velocity Signal - z"
colnames(meanstdData)[56] <- "Standard Deviation of Fast Fourier Transform of Angular Velocity Signal - x"
colnames(meanstdData)[57] <- "Standard Deviation of Fast Fourier Transform of Angular Velocity Signal - y"
colnames(meanstdData)[58] <- "Standard Deviation of Fast Fourier Transform of Angular Velocity Signal - z"

colnames(meanstdData)[59] <- "Mean of Fast Fourier Transform of Magnitude of Body Acceleration Signal"
colnames(meanstdData)[60] <- "Standard Deviation of Fast Fourier Transform of Magnitude of Body Acceleration Signal"

colnames(meanstdData)[61] <- "Mean of Fast Fourier Transform of Magnitude of Body Jerk Signal (acceleration)"
colnames(meanstdData)[62] <- "Standard Deviation of Fast Fourier Transform of Magnitude of Body Jerk Signal (acceleration)"

colnames(meanstdData)[63] <- "Mean of Magnitude of Fast Fourier Transform of Angular Velocity Signal"
colnames(meanstdData)[64] <- "Standard Deviation of Fast Fourier Transform of Magnitude of Angular Velocity Signal"

colnames(meanstdData)[65] <- "Mean of Fast Fourier Transform of Magnitude of Body Jerk Signal (angular velocity)"
colnames(meanstdData)[66] <- "Standard Deviation of Fast Fourier Transform of Magnitude of Body Jerk Signal (angular velocity)"


# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

final <- colMeans(meanstdData)

# Write file needed for upload
write.table(final, "final.txt", row.names = F)

















