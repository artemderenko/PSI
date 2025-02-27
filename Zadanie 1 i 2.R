text <- "And so even though we face the difficulties of today and tomorrow, I still have a dream."
install.packages("qdap")
library(qdap)
frequent_terms <- freq_terms(text)
frequent_terms
freq_terms(text)
plot(frequent_terms)
ggplot(frequent_terms, aes(x = FREQ, y = reorder(WORD, FREQ))) +
  geom_bar(stat = "identity", fill = "skyblue", color = "darkblue", alpha = 0.8) +
  labs(x = "Częstość", y = "Słowo") +
  ggtitle("Wykres częstości słów") +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 10), # Dostosowanie rozmiaru czcionki etykiet na osi Y
        plot.title = element_text(hjust = 0.5, size = 16, face = "bold"), # Wyśrodkowanie i stylizacja tytułu wykresu
        panel.grid.major.y = element_blank(), # Usunięcie głównych linii siatki poziomej
        panel.grid.minor.y = element_blank(), # Usunięcie mniejszych linii siatki poziomej
        axis.line = element_line(color = "black")) # Dostosowanie linii osi
Top25Words
Top100Words
Top200Words

frequent_terms2 <- freq_terms(text, stopwords = Top25Words)
frequent_terms3 <- freq_terms(text, stopwords = Top100Words)
frequent_terms4 <- freq_terms(text, stopwords = Top200Words)

plot(frequent_terms4)
Zadanie 2
text <- "And so even though we face the difficulties of today and tomorrow, I still have a dream. It is a dream deeply rooted in the American dream."
text
frequent_terms <- freq_terms(text)
frequent_terms
frequent_terms <- freq_terms(text, stopwords = Top200Words)
plot(frequent_terms)
