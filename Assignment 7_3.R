library(readr)
library(ggplot2)
library(dplyr)
mtcars <- read_csv("E:/munmun_acadgild/acadgild data analytics/supporting files/mtcars.csv")
View(mtcars)
str(mtcars)
mtcars1 <- mutate(mtcars, 
                  cyl = as.factor(cyl),
                  disp = as.factor(disp),
                  vs = as.factor(vs),
                  am = as.factor(am),
                  gear = as.factor(gear),
                  carb = as.factor(carb),
                  mpg = mpg, hp = hp, drat = drat, qsec=qsec)
str(mtcars1)

boxplot(mpg~carb, data = mtcars1, col = c("Red","Green","Blue","Pink","yellow","orange"),main="Boxplot showing distribution of mpg for each carb")


