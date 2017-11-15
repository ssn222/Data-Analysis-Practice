new_bull12 <- bull[bull$Events12 > 0, ]

hist(new_bull12$Earnings12)
fivenum(new_bull12$Earnings12)

plot(new_bull12$RidePer12, new_bull12$Earnings12)
cor(new_bull12$RidePer12, new_bull12$Earnings12)

plot(new_bull12$CupPoints12, new_bull12$Earnings12)
cor(new_bull12$CupPoints12, new_bull12$Earnings12)

# Removing the outlier
which(new_bull12$Earnings12 > 1000000)
new_bull12[4, ]
new_bull12_cleaned <- new_bull12[-c(4),]

# Replotting the cleaned data
plot(new_bull12_cleaned$RidePer12, new_bull12_cleaned$Earnings12)
cor(new_bull12_cleaned$RidePer12, new_bull12_cleaned$Earnings12)

plot(new_bull12_cleaned$CupPoints12, new_bull12_cleaned$Earnings12)
cor(new_bull12_cleaned$CupPoints12, new_bull12_cleaned$Earnings12)
