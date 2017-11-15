dogsData <- animaldata[animaldata$Animal.Type=="Dog",]

table(dogsData$Intake.Type)

ownder_surrender_dogs <- dogsData[dogsData$Intake.Type=="Owner Surrender",]
table(ownder_surrender_dogs$Outcome.Type)

which(dogsData$Intake.Type=="Owner Surrender" & dogsData$Outcome.Type=="Return to Owner")

dogsData[31,]$Days.Shelter
dogsData[74,]$Days.Shelter

days_before_returnToOwner <- c(dogsData[31,]$Days.Shelter, dogsData[74,]$Days.Shelter)
days_before_returnToOwner
mean(days_before_returnToOwner)
