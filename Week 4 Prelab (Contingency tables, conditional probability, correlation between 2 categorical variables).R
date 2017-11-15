# Create a subset of the data for artists aged 30 or older
acl30 <- acl[acl$Age >= 30,]

# Create a table to show the marginal distribution for each variable
gender <- table(acl30$Gender)
gender
genre <- table(acl30$Genre)
genre

# Create a contingency table to show the conditional distribution for gender and genre
contingency <- table(acl30$Gender, acl30$Genre)
contingency

# Make a bar chart to better visualize how many male and female artists played in each genre
barplot(contingency, legend = T, beside = T)

# Calculate P(A): the probability of each type of genre
prop.table(genre)

# Calculate P(A|B): the probability of each genre, given the artist's gender
prop.table(contingency, 1)
