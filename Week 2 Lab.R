animaldata <- AnimalData

adultAnimals <- animaldata[animaldata$Age.Intake >= 1, ]

table(adultAnimals$Animal.Type)

adultDogs <- adultAnimals[adultAnimals$Animal.Type=="Dog",]
adultCats <- adultAnimals[adultAnimals$Animal.Type=="Cat",]

dogWeights <- adultDogs$Weight
catWeights <- adultCats$Weight

hist(dogWeights)
hist(catWeights)

fivenum(dogWeights)
fivenum(catWeights)

mean(catWeights)
sd(catWeights)
which(animaldata$Days.Shelter==max(daystoadopt))

1-pnorm(2.3)
