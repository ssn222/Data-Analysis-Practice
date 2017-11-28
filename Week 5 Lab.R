WR <- WorldRecords

# Subset the data
mensMile <- WR[WR$Event=='Mens Mile',]
womensMile <- WR[WR$Event=='Womens Mile',]

# Create scatterplots
plot(mensMile$Year, mensMile$Record)
plot(womensMile$Year, womensMile$Record)

# Run linear models
abline(lm(mensMile$Record~mensMile$Year))
abline(womensMile$Year, womensMile$Record)
