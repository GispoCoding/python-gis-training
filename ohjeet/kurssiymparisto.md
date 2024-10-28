# Kurssiympäristö

## Kurssirepositorio ja sen lataaminen

<!-- TODO hämmentääkö repositorio -> pitäisikö olla kurssihakemisto? -->

## Komentorivi (windows)

### Anaconda Prompt

Kurssilla käytetään Python-pakettien sekä -ympäristöjen hallintaan
komentorivikäyttöliittymää, tarkemmin sanottuna **Anaconda
Prompt**-komentoriviä. Anaconda Promptin löydät Windowsilla esimerkiksi
etsimällä sanalla "Anaconda". Jos ohjelma ei ole asennettuna, asenna se
[ohjeiden mukaan](./asennukset-windows.md).

Seuraavassa tutustutaan komentorivin perusteisiin sekä muutamiin kurssilla
tarvittaviin komentoihin. Avaa nyt **Anaconda Prompt**. Avautuvassa ikkunassa
näkyy teksti `(base)`, sekä tiedostopolku. `(base)` tarkoittaa sitä, että tällä
hetkellä aktiivinen conda-**ympäristö** on nimeltään `base`, kun taas
tiedostopolku näyttää polun siihen hakemiston, jossa komentorivi on nyt
aktiivinen. Kulloinkin aktiivisena olevaa hakemistoa kutsutaan
**työhakemistoksi** (working directory), ja sitä voidaan muuttaa navigoimalla
johonkin muuhun hakemistoon.

### Navigointi komentorivillä

Tällä kurssilla käytetään enimmäkseen conda-komentoja, mutta ainakin kaksi
muutakin komentoa kannataa opetella: `dir` ja `cd`.

`dir`-komennolla voit listata työhakemiston tiedostot ja hakemistot.

`cd` (change directory) vaihtaa työhakemistoa johonkin toiseen hakemistoon.

Kokeile ajaa `dir`-komento, ja sen jälkeen siirry `cd`:llä johonkin
tulostuneeseen kansioon.

Työhakemistolla on merkitystä erityisesti sellaisten komentojen kannalta jotka
jostain syystä täytyy tai kannattaa suorittaa tietyssä hakemistossa. Yksi
esimerkki tällaisesta komennosta on kurssilla käytettävä
JupyterLab-ohjelmointityökalu. JupyterLabin tiedostoselain aukeaa siihen
hakemistoon, johon komento ajetaan. Kannattaa siis aina "avata" Jupyter Lab
ajamalla `jupyter lab` siinä hakemistossa, jossa aiot myös työskennellä.
