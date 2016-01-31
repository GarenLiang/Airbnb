# Airbnb
#overall dest table stats
#what % of users go to which country
t = table(train.clean$country_destination) 
print(signif(t / sum(t) * 100), digits = 2)
barplot(t/sum(t))
