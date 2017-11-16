fb <- table(acl$Facebook.100k)
prop.table(fb)

twoway <- table(acl$Facebook.100k, acl$Age.Group)
prop.table(twoway, 2)
