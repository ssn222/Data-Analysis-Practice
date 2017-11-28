library(SDSFoundations)
WR <- WorldRecords

# Subset the data
menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',]

# Create scatterplots
plot(menshot$Year, menshot$Record)
plot(womenshot$Year, womenshot$Record)

# Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year, womenshot$Record)

