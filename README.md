# Using latent profile analysis to classify US states into typologies of structural racism
### Stephanie Veazie, Elleni M. Hailu, Corinne A. Riddell

This repository contains the data and code used to conduct a latent profile analysis to categorize states into typologies of structural racism using data on Black-White inequities in five domains (educational attainment, employment, homeownership, incarceration and income).

### Significance

Structural racism is a fundamental cause of racial health inequities; however, it is a complex construct that is difficult to quantitatively analyze due to its multi-dimensionality. We classified fifty US states into three typologies of structural racism using a latent profile analysis. Five domains of structural racism were included in the analysis: Black-White inequities in educational attainment, employment, homeownership, incarceration, and income. In separate analyses, we specified two, four, and five typologies and describe how states’ groupings changed when different numbers of typologies are used. 

We identified clear geographic clustering in the severity of structural racism, where Type 3 states (Wisconsin, Illinois, Michigan, Minnesota, Iowa, North Dakota, Nebraska) had the largest inequities in four out of five domains (employment, homeownership, incarceration and income), Type 2 states had the largest inequities in education, and Type 1 states had the smallest inequities in all five domains. We also fit models with 2, 4, and 5 typologies and found that states were relatively consistent in which other states they were grouped with, regardless of the number of typologies used in the analysis. 

This work provides an example of how latent profile analysis can be used to characterize structural racism at the state level, visualizing regional patterns in structural racism severity, and exploring how changing the number of typologies affects how states are classified. 

### How to replicate these analyses

If your intention is to replicate our analysis and you are familiar with github, please clone this repository. All of the data cleaning and data visualization steps are contained within the numerically ordered files in the r-data-cleaning-and-visualization folder. The Stata code to conduct the latent profile analysis appears in the stata-lpa-analysis folder. 

If you are unfamiliar with github, but familiar with R and RStudio as well as Stata, you may wish to download the analysis files by navigating to Code directory and downloading a ZIP file of the repository. You can download the raw version of these files and open the .Rmd files locally within RStudio and the .do file within Stata. You will also need to download the appropriate data files found in the respective r-data-cleaning-and-visualization and stata-lpa-analysis folders. You can then run the code chunks within RStudio and the run the .do file within Stata to replicate the analysis. 
