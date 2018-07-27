# Health-Analytics-Exploring-the-BRFSS-Dataset

This dataset was provided by BRFSS whose objective is to collect uniform, state-specific data acros the 50 states and participating US territories on preventive health practices and risk behaviors that are linked to chronic diseases, injuries, and preventable infectious diseases that affect the adult population. Factors assessed by the BRFSS in 2013 include tobacco use, HIV/AIDS knowledge and prevention, exercise, immunization, health status, healthy days - health-related quality of life, health care access, inadequate sleep, hypertension awareness, cholesterol awareness, chronic health conditions, alcohol consumption, fruits and vegetables consumption, arthritis burden, and seatbelt use. The main survey covered 17 compulsory sections viz record identification, health status, healthy days, health care access, inadequate sleep, hypertension awareness, cholesterol awareness, chronic health conditions, demographics, tobacco use, alcohol consumption, fruits and vegetables, exercise, Arthritis burden, use seatbelts, immunization, HIV/AIDS, and 22 optional modules. This dataset has 491,775 observations with 330 variables. Given that this dataset was collected in all the 50 states and US territories randomly, the results can be generalized to the entire population, however, causality cannot be infered.

The dataset file is too large to upload here but you can get it in the links below including the code book

References
BRFSS web site: http://www.cdc.gov/brfss/
BRFSS Questionnaire (Mandatory and Optional Modules): http://www.cdc.gov/brfss/questionnaires/pdf-ques/2013%20BRFSS_English.pdf
BRFSS Codebook: http://www.cdc.gov/brfss/annual_data/2013/pdf/CODEBOOK13_LLCP.pdf
BRFSS Guide to Calculated Variables: http://www.cdc.gov/brfss/annual_data/2013/pdf/2013_Calculated_Variables_Version15.pdf
BRFSS Guide to Optional Modules Used, by State: http://apps.nccd.cdc.gov/BRFSSModules/ModByState.asp?Yr=2013

Dataset notes

The dataset is provided in both Stata (.dta) and R Workspace (.Rdata) formats. Categorical values are factors in the R workspace, and value labels are attached in the Stata version (except when a categorical variable contains more than 50 categories.
All missing values are coded NA in the R Workspace. For Stata, missing values are coded missing using the following codes: . (numbers) or empty text field: BLANK; .a: Dont know/Not sure; .b: Refused; .c: Zero (none); .d: Dont know/Not Sure Or Refused/Missing
Many variables, such as age, race, education, as well as variables that measure counts of events (drinks, times eating fruit, etc.) have alternate versions in the Calculated Variables section of the dataset. Review this section prior to choosing variables for analysis.
The skip logic used in the survey is contained in the notes section for each variable where present.
