
---
title: "README.md - Introduction to run_analysis"
subtitle: "Data Science - Get and Clean Data Module"
author: "CalChad"
date: "Sunday, August 24, 2014"
output: html_document
---

Submission for the Get and Clean Data Module
of the Coursera
Data Science Specialization


      ...***...
      ProgrammersNote: 
        At time of submission this assignment is in skeleton
        form & incomplete (i.e. the code does not tidy the data set
        required for the assignment)
        The files are submitted as the basis of ongoing work to
        complete this assignment according to specification.
      ...***...


The reader should have access to the following files
in the working directory

"README.md"             - this introductory file
"run_analysis.R"        - R code script file for creating tidy data
                          The assignment instructions 
                          & sources of information 
                          are comments comments between R commands
"run_analysisTidy.txt"  - Tidy data set
"run_analysisTidB.txt"  - Backup of original Tidy data set submitted
                          The original one can be overwritten
                          by executing the run_analysis() function
"run_AnalysisCode.md"   - Tidy data set code book
                          Names, types & descriptions of all
                          variables in the run_analysisTidy.txt file


as well as the original dataset:

  "UCI HAR Dataset.zip"   - compressed original data downloaded 
                            from internet ( more detail R script)
  "UCI HAR Dataset.txt"   - metadata file storing information 
                            pertinent to .zip download
  
  
  Where UCI Har Dataset.zip has been unzipped to the folder
  "UCI HAR Dataset"       - contains original data 
                            submitted for tidying
                            Has significant amount of information 
                            on the source, collection & other issues
                            of interest with regard research into
                            the monitoring of human activity by
                            smartphones


The Tidying can be replicated with the following R command lines

Load the script file into memory
> source("run_analysis.R")

Run the tidy process steps as described & executed in the code
> run_analysis()

The end result of running this script would be a new version of the tidy data file

"run_analysisTidy.txt"

