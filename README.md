# Getting and Cleaning Data Project

The goal of this project is to generate a tidy dataset using the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) from the UCI Machine Learning Repository. Following the project instructions, the `run_analysis.R` script does the following:

1. Download the data if necessary.
1. Merge the data from subject, X, and Y files for train and test data.
1. Subset the variables to include only the mean and standard deviation metrics.
1. Replace the numeric Activity IDs with descriptive labels.
1. Create descriptive variable names for the data set.
1. Take the average of each variable by Subject and Activity.

At the end of the process it outputs the new tidy data set to `tidy_HAR_data.txt`.

## Dependencies

For this project I used "R version 3.5.1 (2018-07-02)" and "dplyr 0.7.6".

## Variable Names

The `run_analysis.R` file renames the variables to what I hope is a more understandable form. It does so with a mapping table contained in the `column_map.csv` file. For more details on the variables and their meanings please see the [Codebook](Codebook.md).
