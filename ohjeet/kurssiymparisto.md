<!-- TODO overall shorten this file -->

# Kurssiympäristö

## Kurssihakemisto ja sen lataaminen

Lataa kurssihakemisto kotihakemistoosi. Älä käytä verkkolevyä.

TODO lisää linkki

## Komentoriviperusteet (windows)

### Anaconda Prompt

Kurssilla käytetään Python-pakettien sekä -ympäristöjen hallintaan
komentorivikäyttöliittymää, tarkemmin sanottuna **Anaconda
Prompt**-komentoriviä. Anaconda Promptin löydät Windowsilla esimerkiksi
etsimällä sanalla "Anaconda". Jos ohjelma ei ole asennettuna, asenna se
[ohjeiden mukaan](./asennukset-windows.md).

Seuraavassa tutustutaan komentorivin perusteisiin ja käynnistetään varsinainen
kurssin ohjelmointiympäristö. Avaa nyt **Anaconda Prompt**. Avautuvassa
ikkunassa näkyy teksti `(base)`, sekä tiedostopolku. `(base)` tarkoittaa sitä,
että tällä hetkellä aktiivinen conda-**ympäristö** on nimeltään `base`, kun taas
tiedostopolku näyttää polun siihen hakemiston, jossa komentorivi on nyt
aktiivinen. Kulloinkin aktiivisena olevaa hakemistoa kutsutaan
**työhakemistoksi** (working directory), ja sitä voidaan muuttaa navigoimalla
johonkin muuhun hakemistoon.

### Navigointi kurssihakemistoon

Tällä kurssilla käytetään enimmäkseen conda-komentoja, mutta ainakin kaksi
muutakin komentoa kannataa opetella: `dir` ja `cd`.

`dir`-komennolla voit listata työhakemiston tiedostot ja hakemistot.

`cd` (change directory) vaihtaa työhakemistoa johonkin toiseen hakemistoon.

Työhakemistolla on merkitystä erityisesti sellaisten komentojen kannalta, jotka
jostain syystä täytyy tai kannattaa suorittaa tietyssä hakemistossa. Yksi
esimerkki tällaisesta komennosta on kurssilla käytettävä
**JupyterLab**-ohjelmointityökalu: JupyterLabin oma tiedostoselain nimittäin
aukeaa siihen hakemistoon, jossa komento ajetaan. Kannattaa siis aina "avata"
Jupyter Lab ajamalla komento `jupyter lab` siinä hakemistossa, jossa aiot myös
työskennellä.

Navigoi siis kurssihakemistoon. Jos et muista ulkoa minne tallensit
kurssihakemiston, voit etsiä sen **Resurssienhallinnalla**. TODO Miten saada
absoluuttinen polku windowsilla?

Jos tallensit kurssihakemiston jonnekkin kotihakemistoosi, on polun alku muotoa:

```
C:\Users\<käyttäjänimi>\...
```

Jos kurssihakemistosi on esimerkisi suoraan kotihakemistossasi, voit siirtyä
sinne seuraavalla komennolla:

<!-- TODO check path (the repo name) when downloaded from release -->

```
cd \Users\<käyttäjänimi>\python-gis-training
```

## Kurssiympäristön luominen

Kun olet päässyt kurssihakemistoon, voit luoda kurssiympäristön seuraavalla
komennolla:

```
conda env create --file environment.yml
```

`conda env create` -komennolla luodaan uusi conda-ympärisö

### JupyterLab
