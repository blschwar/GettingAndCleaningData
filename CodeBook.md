## Code Book 
### Coursera Class Project - Getting and Cleaning Data

The data set for this project comes from the UCI HAR dataset

### Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, 
where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows 
of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components,
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

### Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment. 


### Data Transformation

The raw data sets are processed with run_analisys.R script to create a tidy data set

### Merge the training and test sets

Test and training data (X_train.txt, X_test.txt);
Subject ids (subject_train.txt, subject_test.txt);
And activity ids (y_train.txt, y_test.txt) are merged to obtain a single data set.

Variables are labelled with names assigned by original collectors (features.txt).

### Extract the mean and standard deviation variables

Variables with estimated mean (labels contain "mean")& standard deviation (labels contain "std") are extracted and an intermediate data set is created 
with only the values of estimated mean 

## Descriptive names are added

A new column is added to with the activity description. Activity id column is used to look up descriptions in activity_labels.txt.

### Clean up label variables for clarity

Labels were changed to obtain valid R names without parentheses, dashes and commas and to obtain more descriptive labels
