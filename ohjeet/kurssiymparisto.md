<!-- TODO overall shorten this file? -->

# Kurssiympäristö

## Kurssihakemisto ja sen lataaminen

<!-- TODO add filename of the zip to instructions -->

Lataa kurssimateriaali alla olevasta linkistä, ja pura `.zip`-tiedosto paikkaan
josta löydät sen kurssilla: esimerkiksi kotihakemistoosi. Älä kuitenkaan käytä
verkkolevyä.

[Kurssimateriaali.zip](https://github.com/GispoCoding/python-gis-training/archive/refs/heads/main.zip)

<!-- TODO what would be a sensible location on windows? -->

Windows-käyttöjärjestelmässä kotihakemistolla tarkoitetaan hakemistoa, jonka
tiedostopolku on seuraavanlainen:

```console
C:\Users\<käyttäjätunnus>
```

## Komentorivi ja kurssihakemistoon navigointi (windows)

### Anaconda Prompt

Kurssilla käytetään Python-pakettien sekä -ympäristöjen hallintaan
komentorivikäyttöliittymää, tarkemmin sanottuna **Anaconda
Prompt**-komentoriviä. Anaconda Promptin löydät Windowsilla esimerkiksi
etsimällä sanalla "Anaconda". Jos ohjelma ei ole asennettuna, asenna se
[ohjeiden mukaan](./asennukset-windows.md).

Avaa nyt **Anaconda Prompt**. Avautuvassa ikkunassa näkyy teksti `(base)`, sekä
tiedostopolku. `(base)` tarkoittaa sitä, että tällä hetkellä aktiivinen
conda-**ympäristö** on nimeltään `base`, kun taas tiedostopolku näyttää polun
siihen hakemiston, jossa komentorivi on nyt aktiivinen. Kulloinkin aktiivisena
olevaa hakemistoa kutsutaan **työhakemistoksi** (working directory), ja sitä
voidaan muuttaa navigoimalla johonkin muuhun hakemistoon.

### Navigointi kurssihakemistoon

Tällä kurssilla käytetään lähes pelkästään conda-komentoja, mutta ainakin kaksi
muutakin komentoa kannataa opetella: `dir` ja `cd`.

- `dir`-komennolla voit listata työhakemiston tiedostot ja hakemistot.
- `cd` (change directory) vaihtaa työhakemistoa komennolle argumenttina
  annettuun hakemistoon.

Työhakemistolla (ja täten myös komentorivillä navigoinnilla) on merkitystä
sellaisten komentojen kannalta, jotka täytyy tai kannattaa suorittaa tietyssä
hakemistossa. Yksi esimerkki tällaisesta komennosta on kurssilla käytettävä
**JupyterLab**-ohjelmointityökalu: JupyterLabin selainkäyttöliittymä aukeaa
siihen hakemistoon, jossa ohjelman käynnistävä `jupyter lab` -komento ajetaan.
Kannattaa siis aina käynnistää JupyterLab ajamalla `jupyter lab` siinä
hakemistossa, jossa aiot myös työskennellä.

Navigoi siis kurssihakemistoon. Jos et muista ulkoa minne tallensit
kurssihakemiston, voit etsiä sen **Resurssienhallinnalla**. TODO Miten saada
absoluuttinen polku windowsilla?

Jos tallensit kurssihakemiston jonnekkin kotihakemistosi sisälle, on polun alku
muotoa:

```console
C:\Users\<käyttäjätunnus>\...
```

Jos kurssihakemistosi on esimerkisi suoraan kotihakemistossasi, voit siirtyä
sinne seuraavalla komennolla:

<!-- TODO check path (i.e. the repo name) when downloaded -->

```console
cd C:\Users\<käyttäjänimi>\python-gis-training
```

## Kurssiympäristön luominen

Kun olet päässyt kurssihakemistoon, voit luoda kurssin Python-ympäristön
seuraavalla komennolla:

```console
conda env create --file environment.yml --name gis
```

`conda env create` -komennolla luodaan uusi conda-ympärisö. Huomaa ettemme
erittele erikseen ympäristöön asennettavia paketteja, vaan conda lukee ne
suoraan `--file`-vivulle parametrina annetusta `environment.yml`-tiedostosta.
Tiedosto löytyy kurssihakemistosta, eli komento onnistuu kun se ajetaan oikeassa
hakemistossa. Lisäksi kurssin Python-ympäristölle annetaan nimeksi `gis`
käyttämällä `--name`-vipua.

Komennon suorituksessa saattaa mennä hetki, kun useita paketteja ladataan. Kun
ympäristö on valmis, komentorivillä pitäisi näkyä:

```
Preparing transaction: done
Verifying transaction: done
Executing transaction: done
#
# To activate this environment, use
#
#     $ conda activate gis
#
# To deactivate an active environment, use
#
#     $ conda deactivate
```

## Ohjelmoinnin aloitus JupyterLabissa

Kun ympäristö on luotu, aktivoi se:

```console
conda activate gis
```

Nyt komentorivillä pitäisi työhakemiston edessä näkyä `(gis)`, eli aktiivinen
conda-ympäristö on `gis`.

Voit käynnistää JupyterLab-ohjelmointiympäristön seuraavalla komennolla (huomaa
väli):

```console
jupyter lab
```

JupyterLabin pitäisi käynnistyä internet-selaimessa. Jos selainsivu ei aukea
automaattisesti, kopioi komentorivi-ikkunassa näkyvä linkki selaimen
URL-kenttään.

## Kurssiympäristön käyttö jatkossa

Kun haluat palata käyttämään mitä vain aiemmin luomaasi conda-ympäristöä
(esimerkiksi kurssiympäristöä), askeleet ovat varsin yksinkertaiset:

1. Navigoi komentorivillä hakemistoon jossa työskentelet (windowsilla käytä
   komentorivinä **Anaconda Promptia**)
1. Aktivoi haluamasi ympäristö `conda activate` -komennolla (anna ympäristön
   nimi argumenttina, esim `conda activate gis`)
1. Kurssiympäristön tapauksessa aja komento `jupyter lab`
