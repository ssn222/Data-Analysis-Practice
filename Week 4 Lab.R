# Subset the data (males only)
aclM <- acl[acl$Gender=="M",]

#Create a table to show the marginal distributions for Genre and Grammy
genre <- table(aclM$Genre)
genre
grammy <- table(aclM$Grammy)
grammy

# Create a contingency table to show the conditional distribution for Genre and Grammy
twoway <- table(aclM$Grammy, aclM$Genre)
twoway

# Make a bar chart to better visualize how many artists in each Genre received a Grammy
barplot(twoway, legend=T, beside=T)

#Calculate P(A): the probability of winning a Grammy
prop.table(grammy)

#Calculate P(A|B): the probability of winning a Grammy, given the artist's genre
prop.table(twoway, 2)
