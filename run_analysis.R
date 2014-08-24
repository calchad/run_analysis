##
## Data Science Module 3 - Getting & Cleaning Data
## Tidy Dataset Assignment 
##
## RCoding & descriptive information for: 
## 
## 22 August 2014
## 

    ####
    ####  Coursera Assignment instructions
    ####    The dataset to be worked with represents data collected from the accelerometers from the
    ####    Samsung Galaxy S smartphone. 
    ####    A full description is available at the site where the data was obtained: 
    ####      http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
    ####    Here are the data for the project: 
    ####      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ###
    ####
    ####  You should create one R script called run_analysis.R that does the following. 
    ####    1.Merges the training and the test sets to create one data set.
    ####    2.Extracts only the measurements on the mean and standard deviation for each measurement. 
    ####    3.Uses descriptive activity names to name the activities in the data set
    ####    4.Appropriately labels the data set with descriptive variable names. 
    ####    5.Creates a second, independent tidy data set with the average of each variable 
    ####      for each activity and each subject. 
    ####

      ###  Run this .R script file from the R prompt using the following commands 
      
      ###  Read it into memory
      ###     > source("run_analysis.R)
      ###  folowed by the function call
      ###     > run_analysis()

##  Let the action begin with the 
##  run_analysis function

run_analysis <- function() {
  
      ## assume data set is a subfolder of folder working folder
      DirData <- "UCI HAR Dataset" 
      ## move to where the data is located
      setwd( DirData)
        
      ## create activity type code list
      ## from activity_labels.txt - no header line in the text file
      actlstDF <-read.csv("activity_labels.txt", header=FALSE)
      
      print( actlstDF)
      
          ## result of text file read
          ## > actlstDF
          ##  V1
          ##  1            1 WALKING
          ##  2   2 WALKING_UPSTAIRS
          ##  3 3 WALKING_DOWNSTAIRS
          ##  4            4 SITTING
          ##  5           5 STANDING
          ##  6             6 LAYING
          ## > str(actlstDF)
          ##  'data.frame':  6 obs. of  1 variable:
          ##  $ V1: Factor w/ 6 levels "1 WALKING","2 WALKING_UPSTAIRS",..: 1 2 3 4 5 6

      ## convert the activity factors to character strings
      ## and create a dataframe with 2 columns : code & desc
      actlstDF$V1 <- as.character(actlstDF$V1)
          ##  > str(al)
          ## 'data.frame':	6 obs. of  1 variable:
          ##  $ V1: chr  "1 WALKING" "2 WALKING_UPSTAIRS" "3 WALKING_DOWNSTAIRS" "4 SITTING" ...
          
      actlstDF$Code <- substr(actlstDF$V1,1,1)
      actlstDF$Desc <- substr(actlstDF$V1,3,nchar(actlstDF$V1))
      actlstDF <- actlstDF[,c( actlstDF$Code, actlstDF$Desc)]

      
      
   ## return to original workding folder
   setwd( "..")
              
## end of function - no return value required
## but this is a work in progress & tables are returned
## for code testing purposes

   actlstDF

return( actlstDF)


