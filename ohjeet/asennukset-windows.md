# Asennukset

## Conda

Ainoa kurssilla tarvittava asennus on conda-paketinhallintatyökalu. Windows
-käyttöjärjestelmässä ohjelman mukana asentuu myös Anaconda prompt -komentorivi,
jolla condaa päästään käyttämään.

Asenna [Miniconda3](https://docs.anaconda.com/miniconda/) conda-distribuutio.
Asennukseen on sekä graafinen- että komentorivikäyttöliittymä.

### Asennus komentorivillä

Noudata Minicondan omia
[asennusohjeita](https://docs.anaconda.com/miniconda/#quick-command-line-install):

1. Valitse yllä linkatulla ohjesivulla, kohdassa **Quick command line install**,
   välilehti **Windows Command Prompt**.
1. Kopioi ohjesivuilta löytyvät kommennot ja aja komennot komentorivillä
   painamalla enteriä.
1. Asennusikkuna saattaa aueta ja voit sulkea tämän kun asennus on valmis.
1. Voit asennuksen jälkeen sulkea Windows Command Promptin, jotta et sekoita
   sitä Anaconda Promptiin.

### Tarkista toimiiko asennus

> **HUOM!** Jos tietokoneen varsinaisella käyttäjällä ei ole admin-oikeuksia
> (eli esim. organisaation ict-tuki hoitaa asennuksen), täytyy siis seuraavien
> toimintojen onnistua peruskäyttäjällä, ilman admin-oikeuksia.

Condalla pitäisi nyt voida luoda ympäristöjä sekä asentaa paketteja.

Avaa ensin conda-komentorivi, eli **Anaconda Prompt** jonka löydät Windowsilla
esimerkiksi etsimällä sanalla "Anaconda". Tämän jälkeen aja alla olevat komennot
auenneessa komentorivi-ikkunassa.

Luo testiympäristö ja aktivoi se:

```console
conda create --name test
```

Nyt conda-komentorivi haluaa varmistuksen.

Kirjoita `y` ja paina sen jälkeen enteriä.

```console
conda activate test
```

Asenna testiympäristöön JupyterLab-paketti:

```console
conda install --channel conda-forge jupyterlab
```

Kirjoita `y` ja paina sen jälkeen enteriä.

Käynnistä JupyterLab (huomaa väli):

```console
jupyter lab
```

JupyterLabin pitäisi käynnistyä selaimessa. Jos selainsivu ei aukea
automaattisesti, kopioi komentorivi-ikkunassa näkyvä linkki selaimen
URL-kenttään.
