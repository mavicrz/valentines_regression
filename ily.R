#will u be my valentine ?
library(ggplot2)
library(wesanderson)

love <- seq(1:10)
affection <- c(6,7,10,13,14,18,20,24,28,30)

you <- sum((love- mean(love))*(affection - mean(affection)))/(sum((love-mean(love))^2))
me <- mean(affection) - you * mean(love)

you
me


respect <-  wes_palette("Darjeeling1", 1, type = c( "continuous"))
weird <-  wes_palette("IsleofDogs1", 1, type = c( "continuous"))
things <- ggplot() + xlim(1, 10) 
things + geom_point(aes(love,affection), color=respect,size=4) + 
  geom_abline(intercept = me  , slope= you, color=weird, size=0.8) + xlab('time i spent loving you') + ylab('how happy i am')

#te amo, meu anjo :)