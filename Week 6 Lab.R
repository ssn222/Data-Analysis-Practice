library(SDSFoundations)
world <- WorldBankData

# Subset data
dnk <- world[world$Country == "Denmark",]
dnk_select <- dnk[dnk$year >= 1990,]

# Create a variable that represents proportion of the population using the internet
dnk_select$internet.prop <- dnk_select$internet.users / dnk_select$population

# Create a new variable that is "years since 1990"
dnk_select$timeSince1990 <- dnk_select$year - 1990

# Use a function to fit an exponential and logistic model
expFit(dnk_select$timeSince1990, dnk_select$internet.prop)
logisticFit(dnk_select$timeSince1990, dnk_select$internet.prop)

