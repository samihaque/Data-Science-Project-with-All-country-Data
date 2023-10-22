View(All_Countries_data)

#column 1 for analysis: GDP
gdp_data <- All_Countries_data$gdp

# Plotting histogram for GDP
hist(gdp_data, main = "Distribution of GDP", xlab = "GDP", ylab = "Frequency", col = "lightblue", border = "black", breaks= 50)

#----------------------------- x x x ----------------------------------------------

#column 2 for analysis: unemployment_pct

unemployment_data <- All_Countries_data$unemployment_pct

# Plotting histogram for Unemployment Percentage
hist(unemployment_data, main = "Distribution of Unemployment Percentage", xlab = "Unemployment Percentage", ylab = "Frequency", col = "lightgreen", border = "black", breaks= 30)

#----------------------------- x x x ----------------------------------------------

#column 3 for analysis: continent
continent_data <- All_Countries_data$continent

# Plotting bar chart for Continent
barplot(table(continent_data), main = "Distribution of Countries by Continent", xlab = "Continent", ylab = "Frequency", col = "skyblue")

#----------------------------- x x x ----------------------------------------------

#column 4 for analysis: inflation

inflation_data <- All_Countries_data$inflation

# Plotting histogram for Unemployment Percentage
hist(inflation_data, main = "Distribution of inflation data", xlab = "inflation", ylab = "Frequency", col = "coral", border = "black", breaks= 50)

#----------------------------- x x x ----------------------------------------------

------------------------------------------------------------------------------------------------------------
# ----------------------------------  Milestone 4: Missing data and outliers------------------------------------ 
------------------------------------------------------------------------------------------------------------

#--------------------- Missing data and outliers for GDP: ---------------------- 

  # we noticed from the histogram for GDP that it has few very high GDP on the right end which can be a barrier for analyzing the data 
    # since that will prevent the data to represent most of the countries.
  # here we will remove these outliers

# checking for null values
sum(is.na(All_Countries_data$gdp))

# we found 1 null value in gdp coloumn so we will replace with 0
# Replace NA values in the "gdp" column with 0
All_Countries_data$gdp <- replace(All_Countries_data$gdp, is.na(All_Countries_data$gdp), 0)

# we count the median value for gdp in the dataset
mediangdp <- median(All_Countries_data$gdp)
mediangdp

# Replace the gdp in all rows where it is 0 with the median gdp
All_Countries_data$gdp[All_Countries_data$gdp == 0] <- mediangdp

# now we remove outliers for gdp column
data_wOut_gdp_outlier <- subset(All_Countries_data, gdp< 4.0e+12)

data_wOut_gdp_outlier

hist(data_wOut_gdp_outlier$gdp, main = "Distribution of GDP after removing outliers", xlab = "GDP", ylab = "Frequency", col = "lightblue", border = "black", breaks= 50)
# Null Value remove effect: from the histogram we don't see enough change in the frequency of any GDP values
                  # it is because we have only replaced one null value with median value

# Outliers remove effect: In the histogram we notice there only GDP values upto (4.0 * 10^12)
                  # it is beacause we have removed oultliers bigger than that value

#--------------------- Missing data and outliers for Unemployment: ---------------------- 

# checking for null values
sum(is.na(All_Countries_data$unemployment_pct))
# we found 15 null values for unemployment_pct

#replace null value with -1
All_Countries_data$unemployment_pct <- replace(All_Countries_data$unemployment_pct, is.na(All_Countries_data$unemployment_pct), -1)

# we count the median value for unemployment_pct in the dataset
median_unemployment_pct <- median(All_Countries_data$unemployment_pct)
median_unemployment_pct

# Replace the unemployment_pct in all rows where it is -1 with the median unemployment_pct
All_Countries_data$unemployment_pct[All_Countries_data$unemployment_pct == -1] <- median_unemployment_pct

# checking for null values again to make sure no missing data there
sum(is.na(All_Countries_data$unemployment_pct))

# making histogram for the updated unemployment data
unemployment_data <- All_Countries_data$unemployment_pct
hist(unemployment_data, main = "Distribution of Unemployment Percentage after null value changed", xlab = "Unemployment Percentage", ylab = "Frequency", col = "lightgreen", border = "black", breaks= 30)
# Null value remove effect: from the histogram of updated unemployment percentage we do see that the frequency of median has increased 
                      # it is because we replaced 15 null values with median value 

# for unemployment data there were no outliers that needs to be removed

#--------------------- Missing data and outliers for inflation data: ---------------------- 

# checking for null values
sum(is.na(All_Countries_data$inflation))
# we found 10 null values for unemployment_pct

#replace null value with -1
All_Countries_data$inflation <- replace(All_Countries_data$inflation, is.na(All_Countries_data$inflation), -1)

# we count the median value for unemployment_pct in the dataset
median_inflation <- median(All_Countries_data$inflation)
median_inflation

# Replace the inflation in all rows where it is -1 with the median median_inflation
All_Countries_data$inflation[All_Countries_data$inflation == -1] <- median_inflation

# checking for null values again to make sure no missing data there
sum(is.na(All_Countries_data$median_inflation))

# making histogram for the updated inflation data
inflation_data <- All_Countries_data$inflation
hist(inflation_data, main = "Distribution of inflation Percentage", xlab = "Inflation Percentage", ylab = "Frequency", col = "coral", border = "black", breaks= 30)

# removing outliers from inflation data
# here we see most of the countries inflation data are below 60 % and there is one outlier which is at 250% inflation so we remove that

data_wOut_inflation_outlier <- subset(All_Countries_data, inflation< 160)

data_wOut_inflation_outlier
hist(data_wOut_inflation_outlier$inflation, main = "Distribution of inflation Percentage after removing outliers", xlab = "Inflation Percentage", ylab = "Frequency", col = "coral", border = "black", breaks= 30)
# Null remove effect: from the histogram we notice frequency of median value has increased to 85 from 75
                    # it is because we have replaced 10 null values with median value

# Outliers remove effect: from the histogram we do notice that now we have inflation percent only upto 150 
                    # it is beacue we have removed outliers


#----------------------------- x x x ----------------------------------------------

------------------------------------------------------------------------------------------------------------
  # ----------------------------------  Milestone 5: Measures of center and spread------------------------------------ 
------------------------------------------------------------------------------------------------------------
  
  #--------------------- Measures of center and spread for GDP: ---------------------- 

mean()
