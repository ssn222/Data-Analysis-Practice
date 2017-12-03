library(SDSFoundations)
WR <- WorldRecords

# Subset the data
mensMile <- WR[WR$Event=='Mens Mile',]
womensMile <- WR[WR$Event=='Womens Mile',]

# Create scatterplots
plot(mensMile$Year, mensMile$Record)
plot(womensMile$Year, womensMile$Record)

# Run linear models
linFit(mensMile$Year, mensMile$Record)
linFit(womensMile$Year, womensMile$Record)
