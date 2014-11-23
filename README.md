## Coursera Class Project - Getting and Cleaning Data

The purpose of this project is to to prepare tidy data that can be used for later analysis. Included content within Repo:

## tidy_sensor_data.txt --> A tidy data set that:
  * Merges the training and the test sets to create one data set.
  * Extracts only the measurements on the mean and standard deviation for each measurement. 
  * Uses descriptive activity names to name the activities in the data set
  * Appropriately labels the data set with descriptive variable names.
  
## CodeBook.md
--> Describes the variables, the data, and any transformations or work that you performed to clean up the data 

## README.md
--> This file - explains how all of the scripts work and how they are connected.  

## Project Data 
--> https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## To Run
Unzip data into Working Directory
```
$ rscript run_analysis.r
```
Results in tidy_sensor_data.txt in working directory

