# Getting and Cleaning Data Course Project
This repository contains the final project for the Getting and Cleaning Data course on Coursera. The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

## Project Overview
The data used in this project is derived from the “Human Activity Recognition Using Smartphones” dataset, which includes recordings of 30 subjects performing daily activities while wearing a smartphone (Samsung Galaxy S II) on their waist. The dataset is divided into training and test sets, each containing measurements from the accelerometer and gyroscope of the smartphone.

### Files
run_analysis.R: This script performs the following steps:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Data
The data for this project can be found at the following link: Human Activity Recognition Using Smartphones Dataset. [https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones](https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones) 

The dataset is located in the UCI HAR Dataset folder and is divided into two folders: train and test. Each folder contains the following files:

X_train.txt / X_test.txt: The feature vectors.

y_train.txt / y_test.txt: The activity labels.

subject_train.txt / subject_test.txt: The subject identifiers.


Additionally, the dataset includes the following files:

features.txt: The list of all features.

activity_labels.txt: The list of activity labels.

### Dependencies
The script requires the dplyr package to be installed. You can install it using the following command:

```bash
install.packages("dplyr")
```

### Instructions
Download and unzip the dataset into your working directory.

Modify the paths in the script to point to the location of the files.

Run the script run_analysis.R

The script will generate a file named tidy_data_set.txt containing the tidy data set with the average of each variable for each activity and each subject.

