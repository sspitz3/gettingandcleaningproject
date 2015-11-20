datatest<-read.table("./UCI HAR Dataset/test/x_test.txt")
datatest_act<-read.table("./UCI HAR Dataset/test/y_test.txt")
datatest_subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
datatrain<-read.table("./UCI HAR Dataset/train/x_train.txt")
datatrain_act<-read.table("./UCI HAR Dataset/train/y_train.txt")
datatrain_subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")

measurementindices<-c(1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,240:241,253:254,266:271,345:350,424:429,503:504,516:517,529:530,542:543)
measurementlabels<-c("tBodyAcc_mean_x","tBodyAcc_mean_y","tBodyAcc_mean_z","tBodyAcc_std_x","tBodyAcc_std_y","tBodyAcc_Std_z","tGravityAcc_mean_x","tGravityAcc_mean_y","tGravityAcc_mean_z","tGravityAcc_std_x","tGravityAcc_std_y","tGravityAcc_std_z","tBodyAccJerk_mean_x","tBodyAccJerk_mean_y","tBodyAccJerk_mean_z","tBodyAccJerk_std_x","tBodyAccJerk_std_y","tBodyAccJerk_Std_z","tBodyGyro_mean_x","tBodyGryro_mean_y","tBodyGyro_mean_z","tBodyGyro_std_x","tBodyGyro_std_y","tBodyGyro_std_z","tBodyGyroJerk_mean_x","tBodyGyroJerk_mean_y","tBodyGyroJerk_mean_z","tBodyGyroJerk_std_x","tBodyGyroJerk_std_y","tBodyGyroJerk_std_z","tBodyAccMag_mean","tBodyAccMag_std","tGravityAccMag_mean","tGravityAccMag_std","tBodyAccJerkMag_mean","tBodyAccJerkMag_std","tBodyGyroMag_mean","tBodyGyroMag_std","tBodyGyroJerkMag_mean","tBodyGyroJerkMag_std","fBodyAcc_mean_x","fBodyAcc_mean_y","fBodyAcc_mean_z","fBodyAcc_std_x","fBodyAcc_std_y","fBodyAcc_std_z","fBodyAccJerk_mean_x","fBodyAccJerk_mean_y","fBodyAccJerk_mean_z","fBodyAccJerk_std_x","fBodyAccJerk_std_y","fBodyAccJerk_std_z","fBodyGyro_mean_x","fBodyGyro_mean_y","fBodyGyro_mean_z","fBodyGyro_std_x","fBodyGyro_std_y","fBodyGyro_std_z","fBodyAccMag_mean","fBodyAccMag_std","fBodyBodyAccJerkMag_mean","fBodyBodyAccJerkMag_std","fBodyBodyGyroMag_mean","fBodyBodyGyroMag_std","fBodyBodyGyroJerkMag_mean","fBodyBodyGyroJerkMag_std")

actlabels<-c("Walking","Walking_Upstairs","Walking_Downstairs","Sitting","Standing","Laying")
subjlabels<-1:30

datatest$activity<-factor(datatest_act$V1)
datatest$subject<-factor(datatest_subject$V1)
levels(datatest$activity)<-actlabels
datatest_final<-datatest[,c(562,563,measurementindices)]
names(datatest_final)<-c("Activity","Subject",measurementlabels)

datatrain$activity<-factor(datatrain_act$V1)
datatrain$subject<-factor(datatrain_subject$V1)
levels(datatrain$activity)<-actlabels
datatrain_final<-datatrain[,c(562,563,measurementindices)]
names(datatrain_final)<-c("Activity","Subject",measurementlabels)

alldata<-rbind(datatest_final,datatrain_final)

means_act<-sapply(split(alldata[,3:67],alldata$Activity),colMeans)
means_subj<-sapply(split(alldata[,3:67],alldata$Subject),colMeans)

means_all<-cbind(means_act,means_subj)