# **Mapping Prosperity:** A Global Exploration of GDP Drivers

## Project Description

This project aims to identify key drivers and patterns contributing to economic prosperity, using data analysis and statistical modeling techniques in R. The project analyzes a dataset of countries' GDP, population, agricultural land, democracy score, net migration, self-employed percentage, and many other features.

## Objectives
- Uncover and understand the relationships between GDP and various socio-economic indicators.
- Develop a linear regression model to predict GDP based on selected variables.
- Evaluate the model's performance using metrics such as R-squared and residual analysis.
## Data Source
**link to dataset:** https://www.kaggle.com/datasets/adityakishor1/all-countries-details

### Dataset: 
  "All Countries_details" from Kaggle, a well-known platform for sharing and discovering datasets.
### Data Collection: 
  Completed by Aditya Kishor in August 2023.

## Dataset Attributes
  **Country:** Official name of each country.
  
  **Continent:** Categorizes countries based on their geographical location.
  
  **Agricultural Land:** Percentage of land dedicated to agricultural use.
  
  **GDP:** Gross Domestic Product measures a country's economic performance.
  
  **Inflation:** Rate of inflation, capturing changes in the general price level.
  
  **Self-Employment (%):** Indicates the percentage of self-employed individuals.
  
  **Unemployment (%):** Captures the percentage of unemployed individuals.
  
  **Electricity Access (%):** Indicates the percentage of the population with access to electricity.
  
  **Internet Access (%):** Captures the percentage of the population with internet access.
  
  **Population:** Total population of the country.
  
  **Democracy Type:** Classifies the type of democracy in the country.

## Methodology

### Data Exploration

- Explore the distribution of variables using histograms and scatterplots.
- Analyze the relationships between variables using correlation analysis.

### Statistical Modeling

- Developed a linear regression model to predict GDP based on selected variables.
- Evaluated the model's performance using metrics such as R-squared and residual analysis.

# Results of the model:

### Coefficients:

                    Estimate Std. Error t value Pr(>|t|)    
    (Intercept)        2.618e+11  1.076e+11   2.432   0.0161 *  
    
    unemployment_pct  -1.029e+10  4.943e+09  -2.081   0.0390 *  
    
    population         2.629e+03  2.878e+02   9.134  < 2e-16 ***
    
    agricultural_land  3.461e+05  6.676e+04   5.184 6.18e-07 ***
    
    democracy_score    2.845e+10  1.215e+10   2.342   0.0204 *  
    
    net_migration      1.479e+06  3.559e+05   4.156 5.14e-05 ***
    
    self_employed_pct -5.059e+09  1.133e+09  -4.466 1.46e-05 ***
    
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

    Residual standard error: 3.647e+11 on 168 degrees of freedom
    Multiple R-squared:  0.5911,	Adjusted R-squared:  0.5765 
    F-statistic: 40.47 on 6 and 168 DF,  p-value: < 2.2e-16

### Key Findings
- GDP is positively correlated with population, agricultural land, and democracy score.
- GDP is negatively correlated with unemployment percentage and self-employed percentage.
- A linear regression model with population, agricultural land, and democracy score as predictors explains approximately 59% of the variance in GDP.

<img width="760" alt="Screenshot 2023-12-06 at 3 27 14 AM" src="https://github.com/samihaque/Mapping_Prosperity/assets/64384070/8e08185b-5bc9-479e-8b5c-de38aa6c8e2b">


## Conclusions
The project proves that population, agricultural land, democracy score, and net migration are important drivers of GDP. The linear regression model developed in the project can be used to predict GDP for a given country.

## Future Directions
- Investigate the impact of specific policies on GDP.
- Explore alternative modeling techniques to capture more complex relationships between variables.
- Consider incorporating additional data sources to enhance the analysis.

Visit this website for more details on this data analysis project: https://sites.google.com/view/all-country-data-analysis/home
