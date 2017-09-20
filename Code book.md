Code Book

Here you'll find some hints on the data.

First there is the 'subject activity':
  WALKING 
  WALKING_UPSTAIRS 
  WALKING_DOWNSTAIRS 
  SITTING 
  STANDING 
  LAYING 

Next to that we have a number of measurements in the X, Y and Z directions.
For these measurements we'll have the mean and the standard deviation


The measurements are classified in two domains:

1. Time-domain signals (variables prefixed by  timeDomain ), resulting from the capture of accelerometer and gyroscope raw signals.

2. Frequency-domain signals (variables prefixed by  frequencyDomain ), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

Time-domain signals
◦ timeDomainBodyAccelerometerMeanX 
◦ timeDomainBodyAccelerometerMeanY 
◦ timeDomainBodyAccelerometerMeanZ 
◦ timeDomainBodyAccelerometerStandardDeviationX 
◦ timeDomainBodyAccelerometerStandardDeviationY 
◦ timeDomainBodyAccelerometerStandardDeviationZ 
◦ timeDomainGravityAccelerometerMeanX 
◦ timeDomainGravityAccelerometerMeanY 
◦ timeDomainGravityAccelerometerMeanZ 
◦ timeDomainGravityAccelerometerStandardDeviationX 
◦ timeDomainGravityAccelerometerStandardDeviationY 
◦ timeDomainGravityAccelerometerStandardDeviationZ 
◦ timeDomainBodyAccelerometerJerkMeanX 
◦ timeDomainBodyAccelerometerJerkMeanY 
◦ timeDomainBodyAccelerometerJerkMeanZ 
◦ timeDomainBodyAccelerometerJerkStandardDeviationX 
◦ timeDomainBodyAccelerometerJerkStandardDeviationY 
◦ timeDomainBodyAccelerometerJerkStandardDeviationZ 
◦ timeDomainBodyGyroscopeMeanX 
◦ timeDomainBodyGyroscopeMeanY 
◦ timeDomainBodyGyroscopeMeanZ 
◦ timeDomainBodyGyroscopeStandardDeviationX 
◦ timeDomainBodyGyroscopeStandardDeviationY 
◦ timeDomainBodyGyroscopeStandardDeviationZ 
◦ timeDomainBodyGyroscopeJerkMeanX 
◦ timeDomainBodyGyroscopeJerkMeanY 
◦ timeDomainBodyGyroscopeJerkMeanZ 
◦ timeDomainBodyGyroscopeJerkStandardDeviationX 
◦ timeDomainBodyGyroscopeJerkStandardDeviationY 
◦ timeDomainBodyGyroscopeJerkStandardDeviationZ 
◦ timeDomainBodyAccelerometerMagnitudeMean 
◦ timeDomainBodyAccelerometerMagnitudeStandardDeviation 
◦ timeDomainGravityAccelerometerMagnitudeMean 
◦ timeDomainGravityAccelerometerMagnitudeStandardDeviation 
◦ timeDomainBodyAccelerometerJerkMagnitudeMean 
◦ timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation 
◦ timeDomainBodyGyroscopeMagnitudeMean 
◦ timeDomainBodyGyroscopeMagnitudeStandardDeviation 
◦ timeDomainBodyGyroscopeJerkMagnitudeMean 
◦ timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation 


Frequency-domain signals

•Average frequency-domain body acceleration in the X, Y and Z directions:
◦ frequencyDomainBodyAccelerometerMeanX 
◦ frequencyDomainBodyAccelerometerMeanY 
◦ frequencyDomainBodyAccelerometerMeanZ 
◦ frequencyDomainBodyAccelerometerStandardDeviationX 
◦ frequencyDomainBodyAccelerometerStandardDeviationY 
◦ frequencyDomainBodyAccelerometerStandardDeviationZ 
◦ frequencyDomainBodyAccelerometerMeanFrequencyX 
◦ frequencyDomainBodyAccelerometerMeanFrequencyY 
◦ frequencyDomainBodyAccelerometerMeanFrequencyZ 
◦ frequencyDomainBodyAccelerometerJerkMeanX 
◦ frequencyDomainBodyAccelerometerJerkMeanY 
◦ frequencyDomainBodyAccelerometerJerkMeanZ 
◦ frequencyDomainBodyAccelerometerJerkStandardDeviationX 
◦ frequencyDomainBodyAccelerometerJerkStandardDeviationY 
◦ frequencyDomainBodyAccelerometerJerkStandardDeviationZ 
◦ frequencyDomainBodyAccelerometerJerkMeanFrequencyX 
◦ frequencyDomainBodyAccelerometerJerkMeanFrequencyY 
◦ frequencyDomainBodyAccelerometerJerkMeanFrequencyZ 
◦ frequencyDomainBodyGyroscopeMeanX 
◦ frequencyDomainBodyGyroscopeMeanY 
◦ frequencyDomainBodyGyroscopeMeanZ 
◦ frequencyDomainBodyGyroscopeStandardDeviationX 
◦ frequencyDomainBodyGyroscopeStandardDeviationY 
◦ frequencyDomainBodyGyroscopeStandardDeviationZ 
◦ frequencyDomainBodyGyroscopeMeanFrequencyX 
◦ frequencyDomainBodyGyroscopeMeanFrequencyY 
◦ frequencyDomainBodyGyroscopeMeanFrequencyZ 
◦ frequencyDomainBodyAccelerometerMagnitudeMean 
◦ frequencyDomainBodyAccelerometerMagnitudeStandardDeviation 
◦ frequencyDomainBodyAccelerometerMagnitudeMeanFrequency 
◦ frequencyDomainBodyAccelerometerJerkMagnitudeMean 
◦ frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation 
◦ frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency 
◦ frequencyDomainBodyGyroscopeMagnitudeMean 
◦ frequencyDomainBodyGyroscopeMagnitudeStandardDeviation 
◦ frequencyDomainBodyGyroscopeMagnitudeMeanFrequency 
◦ frequencyDomainBodyGyroscopeJerkMagnitudeMean 
◦ frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation 
◦ frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency 


Transformations 

The zip file containing the source data is located at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The following transformations were applied to the source data:
1. download and unzip the data in my working directory
2. loading activity, subject and features data
3. creating of single subsets
4. extracts measurements on mean and standard deviation
5. convert to factors
6. assign the proper labels
7. write it to a text file
The outcome is the 'tidydata.txt' file. Where you can find all above mentioned in the code book.
