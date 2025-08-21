setwd("C:\\Users\\IT24104248\\Desktop\\IT24104248")

##Q1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")

fix(branch_data)

attach(branch_data)

##Question 02
str(branch_data)

sapply(branch_data, class)

##Q3
boxplot(Sales_X1,main="Boxplot for sales distribution",xlab="Sales",outline=TRUE,outpch=8,horizontal=TRUE)

##Q4
quantile(Advertising_X2)

IQR(Advertising_X2)

##Q5
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  
  outliers <- x[x < lower_bound | x > upper_bound]
  
  return(outliers)
}

find_outliers(Years_X3)
