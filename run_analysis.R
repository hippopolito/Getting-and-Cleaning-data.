run_analysis.R

#STEP 1

x.test <- read.table("test/X_test.txt")
y.test <- read.table("test/y_test.txt")
subject.test <- read.table("test/subject_test.txt")

x.train <- read.table("train/X_train.txt")
y.train <- read.table("train/y_train.txt")
subject.train <- read.table("train/subject_train.txt")

features <- read.table("features.txt")


# merge x data set
all.x <- rbind(x.test,x.train)
# merge y data set
all.y <- rbind(y.test,y.train)
# merge subject data set
all.subject <- rbind (subject.test, subject.train) 

# create a final data set containing all
all <- cbind(all.x,all.y,all.subject)

#STEP 2

# extract indices with std and mean
names(features)
# use double backslash match a metacharacter as a regular character
# we have to precede it with a double backslash
#meanANDstd <- grepl( '(-mean\\(\\)|-std\\(\\))', features$V2 )
meanANDstd <- grep("-(mean|std)\\(\\)", features$V2)
all.x_updated <- all.x[,meanANDstd]


#STEP 3

activities <- read.table("activity_labels.txt")
# find which activity corresponds to which number
all.y[, 1] <- activities[all.y[, 1], 2]

#STEP 4

# insert column name
names(all.y) <- "activity"
names(all.subject) <- "subject"

#STEP 5

all <- cbind (all.x_updated,all.y,all.subject)
