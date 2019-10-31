# If you compaire the cut with the price you can see  that te cut not always immediatley means that it 
# will increase in value

cut<- c ("Fair", "Good", "Very Good", "Premium, Ideal")
color <- c("D","E","F","G","H","I","J")
clarity <- c ("I1", "SI2", "SI1", "VS2", "VS1", "VVS2", "VVS1","IF")
price <- (326:18823)
carat <- (0.2:5.01)
x <- (0:10.74)
y <- (0:58.9)
z <- (0:31.8)
table <-(43:95)

#xlength in mm (0--10.74)
#ywidth in mm (0--58.9)
#z depth in mm (0--31.8)
#depth
#total depth percentage = z / mean(x, y) = 2 * z / (x + y) (43--79)
#table
#width of top of diamond relative to widest point (43--95)

______________________
library(ggplot2)
data(diamonds)
df <- diamonds
cut<- c ("Fair", "Good", "Very Good", "Premium, Ideal")
color <- c("D","E","F","G","H","I","J")
clarity <- c ("I1", "SI2", "SI1", "VS2", "VS1", "VVS2", "VVS1","IF")
price <- (326:18823)
carat <- (0.2:5.01)
x <- (0:10.74)
y <- (0:58.9)


 ggplot(df,aes(price,cut)) + geom_line()
 ggplot(df,aes(price,carat)) + geom_line()
 ggplot(df,aes(price,clarity))+geom_line()
 ggplot(df,aes(price,color)) +geom_line()
 ggplot(df,aes(x,y)) +geom_line()
 ggplot(df,aes(clarity,price)) + geom_boxplot()
 ggplot(df,aes(price,cut)) + geom_boxplot()

 ggplot(df,aes(cut,price)) + geom_boxplot()
 ggplot(df,aes(carat,cut)) + geom_boxplot()
 ggplot(df,aes(clarity,color,cut)) +geom_line()
 ggplot(df,aes(clarity,color,cut)) + + geom_line() + geom_smooth()
 ggplot(df,aes(cut,price)) + geom_violin()
 ggplot(df,aes(carat,price)) + geom_violin()
            
 
 ggplot(diamonds, aes(carat, price, colour = color)) +  geom_point()
 ggplot(diamonds,aes(color)) + geom_bar()
  
 
 # 
 







data(diamonds)
df <- diamonds
