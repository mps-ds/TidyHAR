# Tidy HAR Data Dictionary

This is the codebook for the `tidy_HAR_data.txt` file. This data has been created using the data from the [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Naming Convention

I have mostly followed the naming convention of the original dataset, but have modified it so that it is somewhat more readable. It follows the following convention:

    [Domain].[Measure].[Statistic].[Dimension]

The **domain** can take the value of either `Time` or `Frequency` and indicates whether the variable is the raw signal which was captured at a constant rate of 50 Hz (`Time`), or whether that signal has been transformed using a Fast Fourier Transform (`Frequency`).

The **measure** can take on one of 10 values:
* BodyAcc - Body acceleration signal
* GravityAcc - Gravity acceleration signal
* BodyAccJerk - Body acceleration jerk signal
* BodyGyro - Body gyroscope signal
* BodyGyroJerk - Body gyroscope jerk signal
* BodyAccMag - Magnitude of BodyAcc
* GravityAccMag - Magnitude of GravityAcc
* BodyAccJerkMag - Magnitude of BodyAccJerk
* BodyGyroMag - Magnitude of BodyGyro
* BodyGyroJerkMag - Magnitude of BodyGyroJerk

The **statistic** can take one the value of either `Mean` or `Std` (for standard deviation). It indicates whether the specified variable is the mean of the sample or the standard deviation of the sample. *Note: Please remember that for all of these we are looking at the average value by Subject and Activity. So we are looking at either the mean of means or the mean of standard deviations, not the raw standard deviation itself.*

The **dimension** is either `X`, `Y`, or `Z`. A subset of the *measures* are measured in each of the 3 dimensions X, Y, or Z. This applies to `BodyAcc`, `GravityAcc`, `BodyAccJerk`, `BodyGyro`, and `BodyGyroJerk`. It is optional, so other measures will simply not have a dimension.

## Examples

Here are a few examples to help understand the convention:

* **Time.BodyAcc.Mean.X** - This is the mean time domain body acceleration in the X dimension.
* **Frequency.BodyGyro.Std.Y** - This is the standard deviation of the frequency domain body gyroscope signal in the Y dimension.
* **Time.BodyAccMag.Std** - This is the standard deviation of the magnitude of the time domain body acceleration.

## Variables

Here is a full list of the variables available.

#### Subject
This is the ID of the subject.

#### Activity
This is the recorded activity, which is one of the following:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

#### Time.BodyAcc.Mean.X


#### Time.BodyAcc.Mean.Y


#### Time.BodyAcc.Mean.Z


#### Time.GravityAcc.Mean.X


#### Time.GravityAcc.Mean.Y


#### Time.GravityAcc.Mean.Z


#### Time.BodyAccJerk.Mean.X


#### Time.BodyAccJerk.Mean.Y


#### Time.BodyAccJerk.Mean.Z


#### Time.BodyGyro.Mean.X


#### Time.BodyGyro.Mean.Y


#### Time.BodyGyro.Mean.Z


#### Time.BodyGyroJerk.Mean.X


#### Time.BodyGyroJerk.Mean.Y


#### Time.BodyGyroJerk.Mean.Z


#### Time.BodyAccMag.Mean


#### Time.GravityAccMag.Mean


#### Time.BodyAccJerkMag.Mean


#### Time.BodyGyroMag.Mean


#### Time.BodyGyroJerkMag.Mean


#### Frequency.BodyAcc.Mean.X


#### Frequency.BodyAcc.Mean.Y


#### Frequency.BodyAcc.Mean.Z


#### Frequency.BodyAccJerk.Mean.X


#### Frequency.BodyAccJerk.Mean.Y


#### Frequency.BodyAccJerk.Mean.Z


#### Frequency.BodyGyro.Mean.X


#### Frequency.BodyGyro.Mean.Y


#### Frequency.BodyGyro.Mean.Z


#### Frequency.BodyAccMag.Mean


#### Frequency.BodyAccJerkMag.Mean


#### Frequency.BodyGyroMag.Mean


#### Frequency.BodyGyroJerkMag.Mean


#### Time.BodyAcc.Std.X


#### Time.BodyAcc.Std.Y


#### Time.BodyAcc.Std.Z


#### Time.GravityAcc.Std.X


#### Time.GravityAcc.Std.Y


#### Time.GravityAcc.Std.Z


#### Time.BodyAccJerk.Std.X


#### Time.BodyAccJerk.Std.Y


#### Time.BodyAccJerk.Std.Z


#### Time.BodyGyro.Std.X


#### Time.BodyGyro.Std.Y


#### Time.BodyGyro.Std.Z


#### Time.BodyGyroJerk.Std.X


#### Time.BodyGyroJerk.Std.Y


#### Time.BodyGyroJerk.Std.Z


#### Time.BodyAccMag.Std


#### Time.GravityAccMag.Std


#### Time.BodyAccJerkMag.Std


#### Time.BodyGyroMag.Std


#### Time.BodyGyroJerkMag.Std


#### Frequency.BodyAcc.Std.X


#### Frequency.BodyAcc.Std.Y


#### Frequency.BodyAcc.Std.Z


#### Frequency.BodyAccJerk.Std.X


#### Frequency.BodyAccJerk.Std.Y


#### Frequency.BodyAccJerk.Std.Z


#### Frequency.BodyGyro.Std.X


#### Frequency.BodyGyro.Std.Y


#### Frequency.BodyGyro.Std.Z


#### Frequency.BodyAccMag.Std


#### Frequency.BodyAccJerkMag.Std


#### Frequency.BodyGyroMag.Std


#### Frequency.BodyGyroJerkMag.Std
