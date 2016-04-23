Run_Analysis<- function(x = "getdata-projectfiles-UCI HAR Dataset.zip") {
    
    ##Section 2: Read in Data 
    
    X_test<-read.table(unzip(x, "UCI HAR Dataset/test/X_test.txt"), header = FALSE)
    y_test<-read.table(unzip(x, "UCI HAR Dataset/test/y_test.txt"), header = FALSE)
    subject_test<-read.table(unzip(x, "UCI HAR Dataset/test/subject_test.txt"), header = FALSE)
    X_train<-read.table(unzip(x, "UCI HAR Dataset/train/X_train.txt"), header = FALSE)
    y_train<-read.table(unzip(x, "UCI HAR Dataset/train/y_train.txt"), header = FALSE)
    subject_train<-read.table(unzip(x, "UCI HAR Dataset/train/subject_train.txt"), header = FALSE)
    FeatureLabels<-read.table(unzip(x, "UCI HAR Dataset/features.txt"), header = FALSE, colClasses = c("numeric", "character"))[,2]
    
    ##Section 3: Combine Data
    
    FeatureData<-rbind(X_test, X_train)
    ActivityTypes<-rbind(y_test, y_train)
    SubjectIDs<-rbind(subject_test, subject_train)
    
    ##Section 4: Rename Activities identifiers via Labels
    
    ActivityNames<-ActivityTypes
    
    ActivityNames[,1]<-gsub("1","Walking", ActivityNames[,1])
    ActivityNames[,1]<-gsub("2","WalkingUpstairs", ActivityNames[,1])
    ActivityNames[,1]<-gsub("3","WalkingDownstairs", ActivityNames[,1])
    ActivityNames[,1]<-gsub("4","Sitting", ActivityNames[,1])
    ActivityNames[,1]<-gsub("5","Standing", ActivityNames[,1])
    ActivityNames[,1]<-gsub("6","Laying", ActivityNames[,1])
    
    ##Section 5: Rename Identifier Columns
    
    colnames(FeatureData)<-FeatureLabels
    colnames(SubjectIDs)<-"SubjectIDs"
    colnames(ActivityNames)<-"ActivityNames"
    
    ##Section 6: Bind Identifiers and Data Together
    
    FullSet<-cbind(SubjectIDs, ActivityNames, FeatureData)
    
    ##Section 7: Extract Mean and Standard Deviation Associated Variable Columns 
    
    MeanSet<-FullSet[,grep("[Mm]ean|[Ss]td|SubjectIDs|ActivityNames",colnames(FullSet))]
    
    ##Section 8: Split Data for Processing of Means Factored by Subject and Activity
    
    SplitMeanSet<-split(MeanSet, list(MeanSet[,1], MeanSet[,2]))
    
    ##Section 9: Compute Means for Split Data and Recombine with Identifier Variables
    
    ColMeanSet<-lapply(SplitMeanSet, function(x) {
        
        ActivityMean<-x[1,1:2]
        LengthAM<-length(x[1,])
        cbind(ActivityMean[1,1:2],as.data.frame(as.list(colMeans(x[,3:LengthAM])))[,])
    }
    )
    
    ##Section 10: Recombine Data 
    
    FinalSet<-do.call(rbind,ColMeanSet)
    
    ##Section 11: Rename Columns and Un-name Rows for Tidy Appearance and Consistency
    
    colnames(FinalSet)<-names(MeanSet)
    rownames(FinalSet)<-c(1:length(FinalSet[,1]))
    
    ##Section 12: Return The Final Result
    
    FinalSet
    
}



