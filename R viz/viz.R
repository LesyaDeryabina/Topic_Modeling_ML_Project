tf_idf <- read.csv("C:/Users/olesy/Downloads/topics_lda_tf_idf.csv")
bow <- read.csv("C:/Users/olesy/Downloads/topics_lda_bow.csv")

install.packages( "ggplot2" )
library(ggplot2)
install.packages("gtable")
install.packages("rlang")
install.packages("plotly")
library(plotly)

plot_ly(tf_idf, 
        x = ~value, 
        y = ~topic.word, 
        text = ~paste('word:', topic.word, "<br>value: ", value, "<br>topic: ", topic.number),
        size = ~value, 
        color = ~topic.number,
        colors = 'Paired',
        marker = list(opacity = 0.6, sizemode = 'diameter')) %>%
  layout(title = 'Распределение слов по темам (tf-idf)',
         xaxis = list(title = "Value"),
         yaxis = list(title = "Words")) %>%
  add_markers()


plot_ly(bow, 
        x = ~value, 
        y = ~topic.word, 
        text = ~paste('word:', topic.word, "<br>value: ", value, "<br>topic: ", topic.number),
        size = ~value,
        color = ~topic.number, 
        colors = 'Set3',
        marker = list(opacity = 0.6, sizemode = 'diameter')) %>%
  layout(title = 'Распределение слов по темам (bag-of-words)',
         xaxis = list(title = "Value"),
         yaxis = list(title = "Words")) %>%
  add_markers()


