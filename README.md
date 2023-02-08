# Projekt 1 z przedmiotu Metody Numeryczne, Inżynieria i Analiza Danych MiNI PW

Temat projektu: </br> *Wyznaczanie miejsc zerowych wielomianów trygonometrycznych za pomocą różnych metod*.
--------

Dany wielomian trygonometryczny:
$$p(x) = \sum_{k=0}^{N} a_k cos(kx)$$

Mieliśmy za zadanie napisać, a także opisać działanie następujących metod szukania pierwiastków:

1. metoda parabol
2. metoda stycznych
3. metoda Newtona

Co więcej wartości wielomianu miały być wyznaczane za pomocą algorytmu Goertzela.

---

W celu wizualizacji szybkości zbieżności metod wykonaliśmy wykresy typu *heatmap* obrazujące szybkość zbieżności danych metod w zależności od punktów startowych, dla danych wielomianów trygonometrycznych.

Przykładowy wynik wizualizacji:

<p align="center">
  <img width="400"src="https://user-images.githubusercontent.com/31191783/207387069-e1a0f07f-9e54-4840-bbaa-347b3cd43cb7.png">
</p>

pokazuje on szbkość zbieżności metody siecznych w zależności od pierwszego miejsca startowego (drugie miejsce startowe ustalone zostało jako 0) wielomianu $p(x) = 1+cos(x)$.



