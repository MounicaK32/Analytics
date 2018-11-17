#word cloud
install.packages('wordcloud2')
library(wordcloud2)

df=data.frame(word=c('mdi','iim','imt'), freq=c(20,22,18))
wordcloud2(df)

head(demoFreq)
wordcloud2(demoFreq)
wordcloud2(demoFreq, size = 2)

wordcloud2(demoFreq, size = 1,shape = 'pentagon')
wordcloud2(demoFreq, size = 1,shape = 'star')

wordcloud2(demoFreq, size = 2, color = "random-light", backgroundColor = "grey")
wordcloud2(demoFreq, size = 2, minRotation = -pi/2, maxRotation = -pi/2)
wordcloud2(demoFreq, size = 2, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)
wordcloud2(demoFreq, size = 2, minRotation = -pi/6, maxRotation = pi/6, rotateRatio = 0.9)
wordcloud2(demoFreqC, size = 2, color = "random-light", backgroundColor = "grey")
wordcloud2(demoFreqC, size = 2, minRotation = -pi/6, maxRotation = -pi/6, rotateRatio = 1)

