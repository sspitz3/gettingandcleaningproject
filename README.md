# gettingandcleaningproject
Project for Getting and Cleaning Data

There are three files in the repository: run_analysis.R, codebook.md, and README.md.

run_analysis.R is a script for R.  In order to run the script, you must download the data https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip into your working directory.  

This data describes observations for an experiment concerning various measurement of subjects while walking, standing, and doing other activities.  The purpose of the script is to take the combine all the data from these files into a table called "means_all".  This table shows the means of various measurements across each activity and participant.

The script will create many variables, all explained in the codebook.  The final output of the script is the variable "means_all".
