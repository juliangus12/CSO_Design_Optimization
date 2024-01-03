 This repository contains codes and data for A safety factor approach to designing urban infrastructure for dynamic conditions (2021)

          Sanjib Sharma(1)*, Ben Seiyon Lee(2), Robert E. Nicholas(1,3), Klaus Keller(1,4)

(1)Earth and Environmental Systems Institute, The Pennsylvania State University, University Park, PA, USA
(2)Department of Statistics, The George Mason University, Fairfax, VA, USA
(3)Department of Meteorology and Atmospheric Science, The Pennsylvania State University, University Park, PA, USA
(4)Department of Geosciences, The Pennsylvania State University, University Park, PA, USA

*Corresponding author

Keywords:
Extreme Precipitation, Flood Risk, Stormwater Infrastructure Design, 
Climate Change, Decision-Making under Deep Uncertainty

Question? Sanjib Sharma sanjibsharma66@gmail.com


* All scripts provided in this Repository are executed using  R 4.1.2.
    
Module Summary
--------------
* "dataset" - Directory containing all data needed for simulation and to generate figures used in Sharma et al. 2021. ** (Directory needs seperating into input and output data to be less confusing) **
  * "cordex" - Directory containing dynamically downscalled Climate data from 6 Regional Climate Models
  * "maca" - Directory containing statstically downscalled Climate data from 3 Global Climate Models
* "projections" - Directory containing code to generate climate projections provided in "dataset"
* "SourceCodes" - Directory containing functions used for climate projections and SOF calculation for Pipe diameter
  * "Prior2SourceMu.R" - non-Stationary 
  * "Prior2SourceStat.R" - Stationalry
  * "batchmeans.R"
  * "failureprob_diameter.R" - Reliability function for pipe diameter calculation
  
* "Figure" - Directory containing code to generate visualizations from simulation results presented in Sharma et al. 2021. 
  * "design_pipe.R"
  * "precip_estimates.R"
  * "precip_projections.R" - 
* "SampleFigures" - Directory containing sample figures presented in Sharma et al. 2021
  
## Reproduce my experiment
This is a thorough walkthrough of how to use what is in this repository to reproduce results presented in Sharma et al. 2021.

1. Download and unzip the PipeDesgn-Master directory 
2. Run the scripts in the folowing directories to re-create this experiment:

| Directory Name | Description | 
| --- | --- | --- |
| `projection` | Scripts to run the first part of my experiment to build datasets for climate projections| 
| `SourceCode/failureprob_diameter.R` | Script to run Reliability function for pipe diameter calculations based on projections| 

## Reproduce my figures
Use the scripts found in the `Figures` directory to reproduce the figures used in this publication.

| Directory Name | Description | 
| --- | --- | --- |
| `Figure` | Scripts to run the last part of my experiment to make figures shown in paper| examples of these figures can be found in `PipeDesign-master/SampleFigure` |

