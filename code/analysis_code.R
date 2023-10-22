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

# we found one null value in gdp coloumn so we will replace with 0
# Replace NA values in the "gdp" column with 0
All_Countries_data$gdp <- replace(All_Countries_data$gdp, is.na(All_Countries_data$gdp), 0)

# we count the median value for gdp in the dataset
mediangdp <- median(All_Countries_data$gdp)
mediangdp

# Replace the gdp in all rows where it is 0 with the median gdp
All_Countries_data$gdp[All_Countries_data$gdp == 0] <- mediangdp

# now we remove outliers for gdp column
gdp_data_updated <- subset(All_Countries_data, gdp< 4.0e+12)

gdp_data_updated

hist(gdp_data_updated$gdp, main = "Distribution of GDP", xlab = "GDP", ylab = "Frequency", col = "lightblue", border = "black", breaks= 50)

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
hist(unemployment_data, main = "Distribution of Unemployment Percentage", xlab = "Unemployment Percentage", ylab = "Frequency", col = "lightgreen", border = "black", breaks= 30)
