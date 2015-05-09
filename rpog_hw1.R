#

hw1_data <- read.csv("~/Code/Rprog/hw1_data.csv")

# Q16

sum(is.na(hw1_data$Ozone))

# Q17
new_ozone = na.omit(hw1_data$Ozone)
mean(hw1_data$Ozone, na.rm=TRUE)

# Q18 subset
# based on variable values
# newdata <- mydata[ which(mydata$gender=='F' 
#                          & mydata$age > 65), ]

# using subset function 
# newdata <- subset(mydata, age >= 20 | age < 10, 
#                   select=c(ID, Weight))

newdata18 <- subset(hw1_data, Ozone > 31 & Temp > 90,
                  select= c(Solar.R))
mean(newdata18$Solar.R)

# Q19
newdata19 <- subset(hw1_data, Month == 6)
mean(newdata19$Temp)

# Q20
# newdata20 = hw1_data$Ozone[which(hw1_data$Month ==5)]
newdata20 = subset(hw1_data, Month == 5)
max(newdata20$Ozone, na.rm = TRUE)
