capture log close

log using sr_lpa_log_file.log, replace

clear all

use structural_racism_no_dc_3-30-24.dta

browse state no_college_RR unemployment_RR median_income_ratio renters_RR incarceration_RR

save sr_lpa_output_4-2-24, replace

// Create general structural equation model with 5 variables, SPECIFYING 2 LATENT CLASSES
gsem(no_college_RR unemployment_RR median_income_ratio renters_RR incarceration_RR <- _cons) ///
, lclass(C 2) startvalues(randomid, draws(5) seed(12345))

estat lcmean

estat lcprob

estat ic

predict classpost*, classposteriorpr

egen max = rowmax(classpost*)

generate initialpredclass = 1 if classpost1==max 

replace initialpredclass = 2 if classpost2==max 

tab initialpredclass

browse state initialpredclass


// Create general structural equation model with 5 variables, SPECIFYING 3 LATENT CLASSES
gsem(no_college_RR unemployment_RR median_income_ratio renters_RR incarceration_RR <- _cons) ///
 , lclass(C 3) startvalues(randomid, draws(5) seed(12345))
 
estat lcmean

estat lcprob

estat ic

predict cpost*, classposteriorpr

egen cmax = rowmax(cpost*)

generate predclass = 1 if cpost1==cmax 

replace predclass = 2 if cpost2==cmax 

replace predclass = 3 if cpost3==cmax

tab predclass

browse state predclass 


// Create general structural equation model with 5 variables, SPECIFYING 4 LATENT CLASSES

gsem(no_college_RR unemployment_RR median_income_ratio renters_RR incarceration_RR <- _cons) ///
 , lclass(C 4) startvalues(randomid, draws(5) seed(12345))
 
estat lcmean

estat lcprob

estat ic

predict fourclasspost*, classposteriorpr
egen classmax = rowmax(fourclasspost*)
generate four_class_pred = 1 if fourclasspost1==classmax 
replace four_class_pred = 2 if fourclasspost2==classmax 
replace four_class_pred = 3 if fourclasspost3==classmax
replace four_class_pred = 4 if fourclasspost4==classmax
tab four_class_pred

browse state four_class_pred

// Create general structural equation model with 5 variables, SPECIFYING 5 LATENT CLASSES

gsem(no_college_RR unemployment_RR median_income_ratio renters_RR incarceration_RR <- _cons) ///
 , lclass(C 5) startvalues(randomid, draws(5) seed(12345))
 
estat lcmean

estat lcprob

estat ic

predict fiveclasspost*, classposteriorpr
egen classesmax = rowmax(fiveclasspost*)
generate five_class_pred = 1 if fiveclasspost1==classesmax 
replace five_class_pred = 2 if fiveclasspost2==classesmax 
replace five_class_pred = 3 if fiveclasspost3==classesmax
replace five_class_pred = 4 if fiveclasspost4==classesmax
replace five_class_pred = 5 if fiveclasspost5==classesmax
tab five_class_pred

browse state five_class_pred

browse state initialpredclass predclass four_class_pred five_class_pred

log close