bull <- BullRiders

# subset of bull riders that have participated in at least on event in 2013
new_bull <- bull[bull$Events13 > 0, ]

# get a sense of the first variable of interest: Rides13
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

# get a sense of the second variable of interest: Top10_13
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

# create a scatterplot
plot(new_bull$Rides13, new_bull$Top10_13)

# Add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))

# Calculate the correlation coefficient
cor(new_bull$Rides13, new_bull$Top10_13)

# Create a correlation matrix
vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])

# Identify a specific record
which(new_bull$Top10_13==2 & new_bull$Rides13==22)
