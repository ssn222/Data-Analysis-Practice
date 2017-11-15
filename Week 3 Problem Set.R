# All bullriders with at least 1 ride in 2014
new_bull14 <- bull[bull$Rides14 > 0,]

# Average rides per event for each bullrider
ridesPerEvent14 <- new_bull14$Rides14 / new_bull14$Events14

hist(ridesPerEvent14)
fivenum(ridesPerEvent14)

# Relationship between ridesPerEvent and Rank
plot(ridesPerEvent14, new_bull14$Rank14)
abline(lm(new_bull14$Rank14~ridesPerEvent14))
cor(ridesPerEvent14, new_bull14$Rank14)

studyTime <- c(30, 45, 180, 95, 130, 140, 30, 80, 60, 110, 0, 80)
examGrade <- c(74, 68, 87, 90, 94, 84, 92, 88, 82, 93, 65, 90)

studyTime2 <- c(30, 45, 180, 95, 130, 140, 80, 60, 110, 0, 80)
examGrade2 <- c(74, 68, 87, 90, 94, 84, 88, 82, 93, 65, 90)

plot(studyTime2, examGrade2)
cor(studyTime2, examGrade2)
cor(studyTime2, examGrade2)^2
