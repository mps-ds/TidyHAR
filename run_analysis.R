library(dplyr)

# Download zip file if necessary
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipPath <- "projectData.zip"
if (!file.exists(zipPath)) {download.file(zipUrl, destfile = zipPath, method = "curl")}

# Unzip file to "UCI HAR Dataset" folder, overwriting if it already exists
unzip(zipPath, overwrite = TRUE) # , exdir = "data")

# Create paths to training and testing data
uciPath <- "UCI HAR Dataset"
trainPath <- file.path(uciPath, "train")
testPath <- file.path(uciPath, "test")

# Identify Mean and Standard Deviation Feature Columns
features <- read.table(file.path(uciPath,"features.txt"), 
                       col.names = c("Column","Description"), 
                       as.is = TRUE)
mean_or_std <- grep("(mean|std)\\(\\)", features$Description)
relevant_features <- features[mean_or_std, ]

# Read in mapping from ActivityID to Activity description
activity_labels <- read.table(file.path(uciPath,"activity_labels.txt"), 
                              as.is = TRUE, 
                              col.names = c("ActivityID", "Activity"))

# Create function for merging X, y, and subject data
readData <- function(path, postfix, X_features) {
    ## This function assumes that the relevant_features and 
    ## activity_labels dataframes exist in the parent environment
    
    subj_path <- file.path(path, paste0("subject_",postfix,".txt"))
    y_path <- file.path(path, paste0("y_",postfix,".txt"))
    X_path <- file.path(path, paste0("X_",postfix,".txt"))
    
    subjects <- read.table(subj_path, col.names="Subject", as.is = TRUE)
    y <- read.table(y_path, col.names = "ActivityID", as.is = TRUE)
    y$Activity <- factor(y$Activity, levels = activity_labels$ActivityID, labels = activity_labels$Activity)
    y$File <- postfix
    X <- read.table(X_path) %>% select(num_range("V", X_features$Column))
    names(X) <- X_features$Description
    data <- bind_cols(list(subjects, y, X))
    data
}

# Merge training and test data
train_data <- readData(trainPath, "train", relevant_features)
test_data <- readData(testPath, "test", relevant_features)
all_data <- bind_rows(train_data, test_data)

# Rename columns to be more readable using column_map.csv
column_map = read.csv("column_map.csv", as.is = TRUE)
for (ii in seq_len(nrow(column_map))) {
    oldCol <- column_map$OldName[ii]
    newCol <- column_map$NewName[ii]
    names(all_data)[names(all_data)==oldCol] <- newCol
}

# Drop unneeded columns
all_data <- select(all_data, -File, -ActivityID)


# Average values by Subject and Activity
tidy <- all_data %>% group_by(Subject, Activity) %>% summarize_all(funs(mean))
write.table(tidy, "tidy_HAR_data.txt", row.names = FALSE)
