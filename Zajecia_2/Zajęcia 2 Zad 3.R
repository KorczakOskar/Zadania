#Wczytaj dane tekstowe

# Wczytaj plik tekstowy z lokalnego dysku

text21 <- readLines(file.choose(),encoding = "UTF-8")
text21

text24 <- readLines(file.choose(),encoding = "UTF-8")
text24

# Sprawdź częstości słów za pomocą pakietu qdap
install.packages("qdap")
library(qdap)



frequent_terms21 <- freq_terms(text21)

frequent_terms21

frequent_terms21 <- freq_terms(text21, stopwords = Top200Words)

plot(frequent_terms21)


frequent_terms24 <- freq_terms(text24)

frequent_terms24

frequent_terms24 <- freq_terms(text24, stopwords = Top200Words)

plot(frequent_terms24)



# Tworzenie chmury słów za pomocą pakietu wordcloud

install.packages("wordcloud")

library(wordcloud)



# Opcje chmury słów

?wordcloud

# Zmiana wartości min.freq i max.words w celu wyświetlenia mniejszej/większej liczby słów.

# min.freq: słowa o częstości poniżej tej wartości nie będą wyświetlane

# max.words: maksymalna liczba słów do wyświetlenia







# Utwórz chmurę słów

wordcloud(frequent_terms21$WORD, frequent_terms21$FREQ)

wordcloud(frequent_terms24$WORD, frequent_terms24$FREQ)



# Ograniczenie liczby słów w chmurze poprzez określenie minimalnej częstości

wordcloud(frequent_terms21$WORD, frequent_terms21$FREQ, min.freq = 4)


wordcloud(frequent_terms24$WORD, frequent_terms24$FREQ, min.freq = 4)




# Ograniczenie liczby słów w chmurze poprzez określenie maksymalnej liczby słów

wordcloud(frequent_terms21$WORD, frequent_terms21$FREQ, max.words = 5)

wordcloud(frequent_terms24$WORD, frequent_terms24$FREQ, max.words = 5)






# Optymalizacja i dostosowanie wyników

# Dodanie koloru do chmury słów dla lepszej wizualizacji

# Dodanie koloru

wordcloud(frequent_terms21$WORD, frequent_terms21$FREQ, min.freq = 4, colors = brewer.pal(8,"Dark2"))

wordcloud(frequent_terms24$WORD, frequent_terms24$FREQ, min.freq = 4, colors = brewer.pal(11,"Spectral"))

# Dodanie koloru

wordcloud(frequent_terms21$WORD, frequent_terms21$FREQ, max.words = 5, colors = brewer.pal(8,"Accent"))

wordcloud(frequent_terms24$WORD, frequent_terms24$FREQ, max.words = 5, colors = brewer.pal(9,"Pastel1"))

?brewer.pal

brewer.pal.info





# Dodanie różnych palet kolorystycznych do chmury słów z wypowiedzi z 21

wordcloud(frequent_terms21$WORD, frequent_terms21$FREQ, min.freq = 4, colors = brewer.pal(9,"Blues"))

wordcloud(frequent_terms21$WORD, frequent_terms21$FREQ, min.freq = 4, colors = brewer.pal(9,"Reds"))

wordcloud(frequent_terms21$WORD, frequent_terms21$FREQ, min.freq = 4, colors = brewer.pal(9,"Greens"))

# Dodanie różnych palet kolorystycznych do chmury słów z wypowiedzi z 24
wordcloud(frequent_terms24$WORD, frequent_terms24$FREQ, min.freq = 4, colors = brewer.pal(9,"Greys"))
wordcloud(frequent_terms24$WORD, frequent_terms24$FREQ, min.freq = 4, colors = brewer.pal(9,"Oranges"))
wordcloud(frequent_terms24$WORD, frequent_terms24$FREQ, min.freq = 4, colors = brewer.pal(9,"Purples"))
