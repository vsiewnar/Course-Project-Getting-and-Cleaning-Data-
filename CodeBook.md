## CODEBOOK

* The training data and the test data were read into R. We stored the training data in the variable 'train' and the test data in the variable 'test'. 

* We merged both the data sets to create one data set called 'mergedData'.

* The column names for 'mergedData' were read into R and stored in 'colNames'.

* We found the indices that stored information about means and standard deviations and stored them in 'colWMean' and 'colWStd' respectively. We then concatenated and sorted these indices in 'colWMeanStd'.

* 'meanstdData' contains those columns from 'mergedData' with information on only the means and standard deviations of certain properties. 

* We assigned the columns of meanstdData names using the indices found in 'colWMeanStd' and the values in 'colNames'. 

* 'final' contains the final data set that calculates the means of each column in 'meanstdData'

* The output file "final.txt" contains only the numeric values from 'final'.

