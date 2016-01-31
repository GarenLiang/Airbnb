# Airbnb
#From the above graph, we can see users with browser language 'hr' and 'id' are 100% NDF

#Let's look at the 2nd order effects of signup_app + language
#make a new column representing the combination of signup_app and language
train.clean$appLangCross = paste(train.clean$signup_app, train.clean$language, sep = "+")
t = table(train.clean$appLangCross, train.clean$country_destination)
result = as.data.frame(t / rowSums(t))
names(result) = c("App & Language", "country_destination", "Freq")
#Look up the combinations where all entries in these categories are of a particular country_destination
result.top = result[result$Freq == 1,]
print(result.top)
print(ggplot(result.top, aes(result.top$'App & Language', Freq, fill = country_destination)) + geom_bar(stat="identity") + theme(axis.text.x = element_text(angle = 90, hjust = 1)))

#The results give us an important intuition -> that 2nd order effects are significant.  
#The previous graphs indicate signup_app alone does not give 100% towards any particular country.
#Similarly, the language alone only has 100% NDF for 'hr' and 'id' languages
#However, the 2nd order predictor opened up a list of languages that are not 'hr' and 'id'

#This is a quick glance at the potential tasks involved in feature selection/engineering.  
#Sadly the App + Language list of '100%' entries only accounts for about 120 of all 200K entries.
#There is much to do :D
