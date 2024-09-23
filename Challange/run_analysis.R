# Load plyr package
library(dplyr)

# Exercise 1: Merge the training and the test sets to create one data set.

# Load the data
x_train <- read.table("C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/UCI HAR Dataset/train/subject_train.txt")
x_test <- read.table("C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/UCI HAR Dataset/test/subject_test.txt")

# Show dimensions
dim(x_train)
dim(y_train)
dim(subject_train)
dim(x_test)
dim(y_test)
dim(subject_test)

# Merge the training and test sets
x_merge <- rbind(x_train, x_test)
y_merge <- rbind(y_train, y_test)
subject_merge <- rbind(subject_train, subject_test)

# Check dimensions
dim(x_merge)
dim(y_merge)
dim(subject_merge)

# Exercise 2: Extract only the measurements on the mean and standard deviation for each measurement.

# Load features.txt to identify mean and std columns
features <- read.table("C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/UCI HAR Dataset/features.txt")

# Search in the second column values that contain mean o std follow by () as a word
mean_std_features <- grep("(mean|std)\\(\\)", features[, 2])

# Get only the mean and standard deviation measurements
x_merge <- x_merge[, mean_std_features]

# Check dimensions
dim(x_merge)

# Exercise 3: Use descriptive activity names to name the activities in the data set

# Load activity_labels.txt
activity_labels <- read.table("C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/UCI HAR Dataset/activity_labels.txt")

# Replace values in y_merge table from the second column of activity_labels (1:Walking, 2:Walking_upstairs, 3: ...)
y_merge[, 1] <- activity_labels[y_merge[, 1], 2]


# Exercise 4: Appropriately label the data set with descriptive variable names.

# Assign column names from features file
names(x_merge) <- features[mean_std_features, 2]
# Assign column name as Activity
names(y_merge) <- "Activity"
# Assign column name as Subject
names(subject_merge) <- "Subject"

# Combine all data into one data set
full_data_set <- cbind(subject_merge, y_merge, x_merge)

# Exercise 5: From the data set in step 4, create a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# Check dimensions
dim(full_data_set)

# Group by subject and activity 
tidy_data_set_group <-  full_data_set %>%
  group_by(Subject, Activity) 

# Check dimensions
dim(tidy_data_set_group)

# Summarize each variable's average
tidy_data_set <-  tidy_data_set_group %>%
  summarise_all(list(mean = ~mean(.)))

# Check dimensions
dim(tidy_data_set)

# Final exercise: Submission Export tidy_data_set as a .txt file
write.table(tidy_data_set, "C:/Users/ingde/OneDrive/To myself/Cursos/Coursera/Challange/tidy_data_set.txt", row.names = FALSE)
