# Getting and cleaning data course project 
 ## Author:  Gabe Boer
 ## R coding for the Samsung data set

# step 0: loading R modules
library(downloader) 
library(plyr) 
library(knitr) 

# Step 1: Getting the data in 
 setwd("~/Coursera R folder")
 
## Check if directory already exists? 
 if(!file.exists("./Coursera R folder")){ 
   dir.create("./Coursera R folder") 
   } 
 Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
 
 ## Check if zip has already been downloaded in Coursera R folder directory? 
 if(!file.exists("./Coursera R folder/project_Dataset.zip")){ 
   download.file(Url,destfile="./Coursera R folder/project_Dataset.zip",mode = "wb") 
   } 
 ## Check if zip has already been unzipped? 
 if(!file.exists("./Coursera R folder/UCI HAR Dataset")){ 
   unzip(zipfile="./Coursera R folder/project_Dataset.zip",exdir="./Coursera R folder") 
 } 
 ## List all the files of UCI HAR Dataset folder 
 path <- file.path("./Coursera R folder" , "UCI HAR Dataset") 
 files<-list.files(path, recursive=TRUE) 
 
# Step 2: reading data 

 ## Activity files 
 ActivityTest  <- read.table(file.path(path, "test" , "Y_test.txt" ),header = FALSE) 
 ActivityTrain <- read.table(file.path(path, "train", "Y_train.txt"),header = FALSE) 

 ## Subject files 
 SubjectTrain <- read.table(file.path(path, "train", "subject_train.txt"),header = FALSE) 
 SubjectTest  <- read.table(file.path(path, "test" , "subject_test.txt"),header = FALSE) 
 
 ## Features files 
 FeaturesTest  <- read.table(file.path(path, "test" , "X_test.txt" ),header = FALSE) 
 FeaturesTrain <- read.table(file.path(path, "train", "X_train.txt"),header = FALSE) 
 
 
## Test: Check properties 
 
str(ActivityTest) 
str(ActivityTrain) 
str(SubjectTrain) 
str(SubjectTest) 
str(FeaturesTest) 
str(FeaturesTrain) 
 

# Step 3: creating single data set per 'subject' 

 ## a.Concatenate the data tables by rows 
 dataActivity<- rbind(ActivityTrain, ActivityTest) 
 dataSubject <- rbind(SubjectTrain, SubjectTest) 
 dataFeatures<- rbind(FeaturesTrain, FeaturesTest) 
 
 ## b. Set names to variables 
 names(dataSubject)<-c("subject") 
 names(dataActivity)<- c("activity") 
 dataFeaturesNames <- read.table(file.path(path, "features.txt"),head=FALSE) 
 names(dataFeatures)<- dataFeaturesNames$V2 
 
 ## c. Merge columns to get the data frame Data for all data 
 dataCombine <- cbind(dataSubject, dataActivity) 
 Data <- cbind(dataFeatures, dataCombine) 
 
# Step 4: Extract only the measurements on the mean and standard deviation for each measurement. 
 
 ## a. Subset Name of Features by measurements on the mean and standard deviation i.e taken 
 ## Names of Features with "mean()" or "std()" 
 
 subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)] 
 
 ## b. Subset the data frame Data by seleted names of Features 
 selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" ) 
 Data<-subset(Data,select=selectedNames) 

 ## c. Test : Check the structures of the data frame Data 
 str(Data) 

# Step 5: Uses descriptive activity names to name the activities in the data set 
 ## a. Read descriptive activity names from "activity_labels.txt" 
 activityLabels <- read.table(file.path(path, "activity_labels.txt"),header = FALSE) 
 
 ## b. Factorize Variale activity in the data frame Data using descriptive activity names 
 Data$activity<-factor(Data$activity,labels=activityLabels[,2]) 

  ## Test output 
 head(Data$activity,30) 
 
# Step 6: Appropriately labels the data set with descriptive variable names 
names(Data)<-gsub("^t", "time", names(Data)) 
 names(Data)<-gsub("^f", "frequency", names(Data)) 
 names(Data)<-gsub("Acc", "Accelerometer", names(Data)) 
 names(Data)<-gsub("Gyro", "Gyroscope", names(Data)) 
 names(Data)<-gsub("Mag", "Magnitude", names(Data)) 
 names(Data)<-gsub("BodyBody", "Body", names(Data)) 

  ## Test output
 names(Data) 

# Step 7: write the tidy data set 
 newData<-aggregate(. ~subject + activity, Data, mean) 
 newData<-newData[order(newData$subject,newData$activity),] 
write.table(newData, file = "tidydata.txt",row.name=FALSE,quote = FALSE, sep = '\t') 
