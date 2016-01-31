# Airbnb
options(jupyter.plot_mimetypes = "image/png")
options(jupyter.plot_mimetypes = "image/png")
#visualizations summary:
#- NDF + US makes up ~90% of all entries
#- As a first step, if we can achieve a good prediction rate on NDF vs US alone (say 80%), 
#- then the overall model performance would be ~(0.9 * 0.8 = 72%) with minimal effort
#- This intuition makes practical sense since Airbnb has the best penetration in North America.

library(ggplot2)

train.raw <- read.csv("C:/Users/ideabreeze/Desktop/airbnb/train_users_2.csv")
#test.raw  <- read.csv("C:/Users/ideabreeze/Desktop/airbnb/test_users.csv")

#insert data cleaning codes
#------
#end data cleaning

train.clean = train.raw
#test.clean = test.raw
