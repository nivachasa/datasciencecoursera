### 1. **Website Description**
The website provides a dataset related to **Human Activity Recognition Using Smartphones** check the link [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). 

This dataset was collected from the accelerometer and gyroscope embedded in smartphones while subjects performed different activities such as walking, sitting, standing, and lying down. The objective is to use these sensor signals to classify the activities performed by each subject based on their movement patterns.

### 2. **UCI HAR Dataset Attributes**
The dataset contains the following key attributes divided in x_train and x_test dataset both with the same atributes:

  - **tBodyAcc-mean()**: Time-domain body acceleration mean values in X, Y, and Z directions.
  - **tBodyAcc-std()**: Time-domain body acceleration standard deviation values in X, Y, and Z directions.
  - **tGravityAcc-mean()**: Time-domain gravity acceleration mean values in X, Y, and Z directions.
  - **tGravityAcc-std()**: Time-domain gravity acceleration standard deviation values in X, Y, and Z directions.
  - **tBodyGyro-mean()**: Time-domain body gyroscope mean values in X, Y, and Z directions.
  - **tBodyGyro-std()**: Time-domain body gyroscope standard deviation values in X, Y, and Z directions.
  - **tBodyAccJerk-mean()**: Time-domain body acceleration jerk mean values in X, Y, and Z directions.
  - **tBodyAccJerk-std()**: Time-domain body acceleration jerk standard deviation values in X, Y, and Z directions.
  - **tBodyGyroJerk-mean()**: Time-domain gyroscope jerk mean values in X, Y, and Z directions.
  - **tBodyGyroJerk-std()**: Time-domain gyroscope jerk standard deviation values in X, Y, and Z directions.
  - **tBodyAccMag-mean()**: Time-domain body acceleration magnitude mean values.
  - **tBodyAccMag-std()**: Time-domain body acceleration magnitude standard deviation values.
  - **tGravityAccMag-mean()**: Time-domain gravity acceleration magnitude mean values.
  - **tGravityAccMag-std()**: Time-domain gravity acceleration magnitude standard deviation values.
  - **tBodyAccJerkMag-mean()**: Time-domain body acceleration jerk magnitude mean values.
  - **tBodyAccJerkMag-std()**: Time-domain body acceleration jerk magnitude standard deviation values.
  - **tBodyGyroMag-mean()**: Time-domain gyroscope magnitude mean values.
  - **tBodyGyroMag-std()**: Time-domain gyroscope magnitude standard deviation values.
  - **tBodyGyroJerkMag-mean()**: Time-domain gyroscope jerk magnitude mean values.
  - **tBodyGyroJerkMag-std()**: Time-domain gyroscope jerk magnitude standard deviation values.
  - **fBodyAcc-mean()**: Frequency-domain body acceleration mean values in X, Y, and Z directions.
  - **fBodyAcc-std()**: Frequency-domain body acceleration standard deviation values in X, Y, and Z directions.
  - **fBodyAccJerk-mean()**: Frequency-domain body acceleration jerk mean values in X, Y, and Z directions.
  - **fBodyAccJerk-std()**: Frequency-domain body acceleration jerk standard deviation values in X, Y, and Z directions.
  - **fBodyGyro-mean()**: Frequency-domain body gyroscope mean values in X, Y, and Z directions.
  - **fBodyGyro-std()**: Frequency-domain body gyroscope standard deviation values in X, Y, and Z directions.
  - **fBodyAccMag-mean()**: Frequency-domain body acceleration magnitude mean values.
  - **fBodyAccMag-std()**: Frequency-domain body acceleration magnitude standard deviation values.
  - **fBodyBodyAccJerkMag-mean()**: Frequency-domain body acceleration jerk magnitude mean values.
  - **fBodyBodyAccJerkMag-std()**: Frequency-domain body acceleration jerk magnitude standard deviation values.
  - **fBodyBodyGyroMag-mean()**: Frequency-domain body gyroscope magnitude mean values.
  - **fBodyBodyGyroMag-std()**: Frequency-domain body gyroscope magnitude standard deviation values.
  - **fBodyBodyGyroJerkMag-mean()**: Frequency-domain gyroscope jerk magnitude mean values.
  - **fBodyBodyGyroJerkMag-std()**: Frequency-domain gyroscope jerk magnitude standard deviation values.

The dataset contains the following key attributes divided in y_train and y_test dataset both with the same atributes:
  - **column**: Values 1 to 6.

The dataset contains the following key attributes divided in subject_train and subject_test dataset both with the same atributes:
  - **column**: Values 1 to 24.

The column names where got from activity_labels.txt and feautures.txt files.

### 3. **Processed Dataset (New Data Columns)**
After processing the dataset by grouping the data by **Subject** and **Activity**, and calculating the mean for each column, the resulting dataset will include the following columns:

- **Subject**: Unique identifier for each subject.
- **Activity**: Activity type performed by the subject.
- The mean for each of the following features (time-domain and frequency-domain):
  - tBodyAcc-mean()-X_mean
  - tBodyAcc-mean()-Y_mean
  - tBodyAcc-mean()-Z_mean
  - tBodyAcc-std()-X_mean
  - tBodyAcc-std()-Y_mean
  - tBodyAcc-std()-Z_mean
  - tGravityAcc-mean()-X_mean
  - tGravityAcc-mean()-Y_mean
  - tGravityAcc-mean()-Z_mean
  - tGravityAcc-std()-X_mean
  - tGravityAcc-std()-Y_mean
  - tGravityAcc-std()-Z_mean
  - tBodyAccJerk-mean()-X_mean
  - tBodyAccJerk-mean()-Y_mean
  - tBodyAccJerk-mean()-Z_mean
  - tBodyAccJerk-std()-X_mean
  - tBodyAccJerk-std()-Y_mean
  - tBodyAccJerk-std()-Z_mean
  - tBodyGyro-mean()-X_mean
  - tBodyGyro-mean()-Y_mean
  - tBodyGyro-mean()-Z_mean
  - tBodyGyro-std()-X_mean
  - tBodyGyro-std()-Y_mean
  - tBodyGyro-std()-Z_mean
  - tBodyGyroJerk-mean()-X_mean
  - tBodyGyroJerk-mean()-Y_mean
  - tBodyGyroJerk-mean()-Z_mean
  - tBodyGyroJerk-std()-X_mean
  - tBodyGyroJerk-std()-Y_mean
  - tBodyGyroJerk-std()-Z_mean
  - tBodyAccMag-mean()_mean
  - tBodyAccMag-std()_mean
  - tGravityAccMag-mean()_mean
  - tGravityAccMag-std()_mean
  - tBodyAccJerkMag-mean()_mean
  - tBodyAccJerkMag-std()_mean
  - tBodyGyroMag-mean()_mean
  - tBodyGyroMag-std()_mean
  - tBodyGyroJerkMag-mean()_mean
  - tBodyGyroJerkMag-std()_mean
  - fBodyAcc-mean()-X_mean
  - fBodyAcc-mean()-Y_mean
  - fBodyAcc-mean()-Z_mean
  - fBodyAcc-std()-X_mean
  - fBodyAcc-std()-Y_mean
  - fBodyAcc-std()-Z_mean
  - fBodyAccJerk-mean()-X_mean
  - fBodyAccJerk-mean()-Y_mean
  - fBodyAccJerk-mean()-Z_mean
  - fBodyAccJerk-std()-X_mean
  - fBodyAccJerk-std()-Y_mean
  - fBodyAccJerk-std()-Z_mean
  - fBodyGyro-mean()-X_mean
  - fBodyGyro-mean()-Y_mean
  - fBodyGyro-mean()-Z_mean
  - fBodyGyro-std()-X_mean
  - fBodyGyro-std()-Y_mean
  - fBodyGyro-std()-Z_mean
  - fBodyAccMag-mean()_mean
  - fBodyAccMag-std()_mean
  - fBodyBodyAccJerkMag-mean()_mean
  - fBodyBodyAccJerkMag-std()_mean
  - fBodyBodyGyroMag-mean()_mean
  - fBodyBodyGyroMag-std()_mean
  - fBodyBodyGyroJerkMag-mean()_mean
  - fBodyBodyGyroJerkMag-std()_mean

