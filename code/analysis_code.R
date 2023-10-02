View(All_Countries)

#column 1 for analysis: GDP
gdp_data <- All_Countries$gdp

# Plotting histogram for GDP
hist(gdp_data, main = "Distribution of GDP", xlab = "GDP", ylab = "Frequency", col = "lightblue", border = "black")

#----------------------------- x x x ----------------------------------------------

#column 2 for analysis: unemployment_pct

unemployment_data <- All_Countries$unemployment_pct

# Plotting histogram for Unemployment Percentage
hist(unemployment_data, main = "Distribution of Unemployment Percentage", xlab = "Unemployment Percentage", ylab = "Frequency", col = "lightgreen", border = "black")

#----------------------------- x x x ----------------------------------------------

#column 3 for analysis: continent
continent_data <- All_Countries$continent

# Plotting bar chart for Continent
barplot(table(continent_data), main = "Distribution of Countries by Continent", xlab = "Continent", ylab = "Frequency", col = "skyblue")

#----------------------------- x x x ----------------------------------------------

#column 4 for analysis: inflation

inflation_data <- All_Countries$inflation

# Plotting histogram for Unemployment Percentage
hist(inflation_data, main = "Distribution of inflation data", xlab = "inflation", ylab = "Frequency", col = "coral", border = "black")
