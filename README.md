# COVIDandCrime: Analysis of Crime Dynamics Amidst Social Distancing Protocols

The purpose of this project is to determine whether the implementation of states of emergency and stay at home orders impacted crime dynamics across Baltimore, Baton Rouge, and Chicago. The major focus of this project is on Chicago, but there are interesting dynamics in the other two cities worth exploring.

## Getting Started
Fork this repository into your own GitHub or clone it onto your local machine, then feel free to play with the datasets and code!

### Prerequisites
The files are available in .csv format and .m files. Users will need to have a text editor that can manipulate .csv files (Excel, Numbers, LibreOffice, etc.) and Matlab installed on their computers in order to run these files.

### Files Included
Within the repository are data files and Matlab files with which to analyze this data. Brief descriptions of these files are as follows:

#### Chicago_CrimeCovidAnalysis.m
This file is used to determine whether Chicago data shows significant differences across years and time periods, mostly focused on the social restrictions implemented in response to COVID-19. The data files (included in the repository) are imported and parsed based on different time periods. Comparisons are then made for a variety of different time periods and years using t-tests. It is also possible to run regressions across a number of these comparisons to determine whether the relationships are linear or not. Finally, there is the ability to make scatter plots based on the results.

#### Baltimore_CrimeCovidAnalysis.m
This file is used to determine whether Baltimore data shows significant differences across years and time periods, mostly focused on the social restrictions implemented in response to COVID-19. The data files (included in the repository) are imported and parsed based on different time periods. Comparisons are then made for a variety of different time periods and years using t-tests. Finally, there is the ability to make scatter plots based on the results.

#### BR_CrimeCovidAnalysis.m
This file is used to determine whether Baton  Rouge data shows significant differences across years and time periods, mostly focused on the social restrictions implemented in response to COVID-19. The data files (included in the repository) are imported and parsed based on different time periods. Comparisons are then made for a variety of different time periods and years using t-tests. Finally, there is the ability to make scatter plots based on the results.

#### Chicago_Crime_2020_Analysis.csv
The Chicago crime datasets come from the [Chicago City Data Portal](https://data.cityofchicago.org/), which provides a number of different datasets for varied time periods and topics. Particularly, we pull from the [Crimes - 2001 to Present](https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-Present/ijzp-q8t2) and isolate the first three months of 2020 as our study period. The number of each crime type on each day was counted. Some crime types were excluded from the analysis included in the publication, but are available for further exploration. Included in this dataset is only the date and the number of each crime type on said date. There is far more information available in the initial dataset that can be downloaded and tested.

#### Chicago_Crime_201x_Analysis.csv

#### Baton_Rouge_Crime_Analysis.csv

#### BPD_VBC_Analysis.csv


## Running the Files
Once you've downloaded the files, make sure they are all stored in the same folder, or you may run into errors with the code.

## Tests to Run

## Authors
Shelby M. Scott is the author of this code and responsible for data management. If you have questions, feel free to contact her through shelbymscott.github.io with questions.
