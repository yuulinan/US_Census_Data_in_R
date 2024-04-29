# The United States Census and the R programming language
## https://walker-data.com/census-r/the-united-states-census-and-the-r-programming-language.html

install.packages("tidycensus")
library(tidycensus)

# API keys can be obtained at https://api.census.gov/data/key_signup.html.
census_api_key("KEY HIDDEN FROM VIEW", install = TRUE) 

# obtain decennial Census or ACS data from the 2000, 2010, and 2020 
total_population_10 <- get_decennial(
  geography = "state", 
  variables = "P001001",
  year = 2010
)

# Example: American Indian & Alaska Native population by state from the 2020 decennial Census.
aian_2020 <- get_decennial(
  geography = "state",
  variables = "P1_005N",
  year = 2020,
  sumfile = "pl"
)
