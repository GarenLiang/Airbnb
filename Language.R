# Airbnb

#browser language gives an indication of where the user lives and impacts the likelihood of travel
t = table(train.clean$language, train.clean$country_destination) 
print(signif(t / rowSums(t) * 100, digits=2))
d = as.data.frame(t / rowSums(t))
names(d) = c("language", "destination_country", "Freq")
print(ggplot(d, aes(language, Freq, fill=destination_country)) + geom_bar(stat="identity"))
