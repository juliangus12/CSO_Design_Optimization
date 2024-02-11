# A Safety Factor Approach to Designing Urban Infrastructure for Dynamic Conditions (2021)

## Authors
- Sanjib Sharma(1)*, Ben Seiyon Lee(2), Robert E. Nicholas(1,3), Klaus Keller(1,4)
  - (1) Earth and Environmental Systems Institute, The Pennsylvania State University, University Park, PA, USA
  - (2) Department of Statistics, The George Mason University, Fairfax, VA, USA
  - (3) Department of Meteorology and Atmospheric Science, The Pennsylvania State University, University Park, PA, USA
  - (4) Department of Geosciences, The Pennsylvania State University, University Park, PA, USA
  - *Corresponding author

## Overview
This repository hosts the code and data used in the research paper "A Safety Factor Approach to Designing Urban Infrastructure for Dynamic Conditions". It includes datasets, source codes, and scripts for generating climate projections and calculating the Safety Factor (SF) for pipe diameter in urban infrastructure under dynamic climatic conditions.

### Repository Structure
- **dataset/**: Contains all data required for simulations and figure generation.
  - **cordex/**: Dynamically downscaled climate data from 6 Regional Climate Models.
  - **maca/**: Statistically downscaled climate data from 3 Global Climate Models.
- **projections/**: Scripts for generating climate projections.
- **SourceCodes/**: Functions for climate projections and SF calculation.
  - `Prior2SourceMu.R`, `Prior2SourceStat.R`, `batchmeans.R`, `failureprob_diameter.R`
- **Figure/**: Scripts for creating visualizations from simulation results.
  - `design_pipe.R`, `precip_estimates.R`, `precip_projections.R`
- **SampleFigures/**: Sample figures generated from the scripts.

### Prerequisites
- R version 4.1.2 or later.

### Reproducing the Experiments
1. Clone the repository:
   ```
   git clone https://github.com/juliangus12/CSO_Design_Optimization.git
   ```
2. Change directory permissions (if necessary):
   ```
   sudo chmod -R 777 CSO_Design_Optimization
   ```
3. Set execution permissions for the setup script:
   ```
   sudo chmod +x CSO_Design_Optimization/PipeDesign-master/PKG_Setup.sh
   ```
4. Go to the PipeDesign-master directory:
   ```
   cd CSO_Design_Optimization/PipeDesign-master/
   ``` 
5. Execute the script to get the necessary dependencies:
   ```
   sudo ./PKG_Setup.sh
   ```
6. Execute the `Model_Setup.R` script:
   ```
   Rscript Run_Model.R
   ```
   This script processes the data from the dataset directory and stores results in `projections/results`. It also generates figures in the `SampleFigure/` directory.
### Removing current results
1. Change directory permissions (if necessary):
   ```
   sudo chmod -R 777 CSO_Design_Optimization
   ```
2. Set execution permissions for the setup script:
   ```
   sudo chmod +x CSO_Design_Optimization/PipeDesign-master/Delete_Results.sh
   ```
  This script removes all of the contents recorded in the directories located inside of projections/results but maintains the file structure 

### Package Versions

- here: 1.0.1
- ggplot2: 3.4.4
- plyr: 1.8.9
- tidyr: 1.3.0
- readr: 2.1.4
- lubridate: 1.9.3
- zoo: 1.8.12
- xtable: 1.8.4
- Rcpp: 1.0.11
- bda: 17.1.2
- Hmisc: 5.1.1
- plotrix: 3.8.3
- gplots: 3.1.3
- evir: 1.7.4
- dplyr: 1.1.3
- ncdf4: 1.21
- xml2: 1.3.5
- languageserver: 0.3.16
- crayon: 1.5.2

### License
This project is licensed under the [LICENSE](https://github.com/juliangus12/CSO_Design_Optimization/blob/main/PipeDesign-master/LICENSE) file in the repository.

### Contributing
Contributions to this project are welcome. Please refer to the contributing guidelines for more information.

### Contact
For any queries regarding this project, please contact the corresponding author.
