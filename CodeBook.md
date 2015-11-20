Code Book for run_analysis.R

You must download the data "UCI HAR Dataset" into your working directory.  The script then performs the following operations:

(1) reads the data called "x_test", "y_test", and "subject_test" from the train and test folders respectively into variables with names like "datatest","datatest_act", and "datatest_subject"

(2) Creates lists with columns numbers a labels corresponding to the means and standard deviations of the data

(3) Creates tables called "datatest_final" and "datatrain_final" which include only the mean and standard deviation data along with extra columns labeling the subject and activity of the particular observation

(4) Combines these tables into one table called "alldata"

(5) Creates two new tables called "means_act" and "means_subj" which average the observations over the activity and subject respectively

(6)Combines these tables into the output table "means_all"
