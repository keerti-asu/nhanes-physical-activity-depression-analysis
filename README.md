# Physical Activity and Depression Analysis (NHANES)

## Project Overview
This project explores the relationship between **physical activity and depression** using data from the NHANES dataset. 
The goal is to determine whether individuals who engage in physical activity report lower levels of depression.

## Dataset
The dataset comes from the **NHANES R package**, which contains health and demographic information from the 
National Health and Nutrition Examination Survey (NHANES) conducted in the United States.

The dataset is loaded in R using:

```r
install.packages("NHANES")
library(NHANES)
data("NHANES")
```

## Research Question
Is there an association between physical activity and depression among adults?

## Methods
- Data cleaning and filtering
- Creation of a binary depression variable
- Descriptive statistics and contingency tables
- Visualization using ggplot2
- Chi-square test for association

## Key Result
. 53% of adults in the dataset reported being physically active.

• 21% of individuals reported experiencing depression.

• Individuals who were physically active had a lower proportion of depression compared to those who were inactive.

• A Chi-square test confirmed a statistically significant association between physical activity and depression (p < 0.001).

The chi-square test indicates a **significant association between physical activity and depression**, 
suggesting that individuals who engage in physical activity are less likely to report depression.
<img width="887" height="550" alt="image" src="https://github.com/user-attachments/assets/32a5a065-eb55-4da0-bd74-0e69c1c13038" />



## Files in this Repository
- `analysis_code.R` – R code used for data cleaning, visualization, and statistical analysis
- `final_report_keerti_upadhyay.docx` – Final written report of the project

## Tools Used
- R
- dplyr
- ggplot2
- NHANES dataset
