# Airbnb
#destination_country table stats by signup app
#At a glance, phone-signup users is slightly more likely to not make a booking (NDF)
t = table(train.clean$signup_app, train.clean$country_destination) 
print(signif(t / rowSums(t) * 100, digits=2))
d = as.data.frame(t / rowSums(t))
names(d) = c("signup_app", "destination_country", "Freq")
print(ggplot(d, aes(signup_app, Freq, fill=destination_country)) + geom_bar(stat="identity"))
