Getting and Cleaning Data Project

Papadopoulos Theseus



A full description of the data used in this project can be found at The UCI Machine Learning Repository

Of course you need to set your wd that contains the dataset, which can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

STEP 1. The txt source files are read and the initial data frames are created. The corresponding data frames are binded together  all.x all.y all.subject.

In STEP 2, the indices involving mean and std are extracted and a new updated all.x_updated data frame is created, which contains only the desired columns.

In STEP 3, the components of all.y are updated in order to have descriptive names.

all.y[, 1] <- activities[all.y[, 1], 2] 
This command relates the number of the activity with its name.

In STEP 4, column names are inserted in order to be more descriptive.

STEP 5 is incomplete as it is obvious. I have just created the complete data frame
