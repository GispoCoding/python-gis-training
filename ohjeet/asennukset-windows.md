# Asennukset

## Conda

Ainoa kurssilla tarvittava asennus on conda-paketinhallintatyökalu.
Windows -käyttöjärjestelmässä ohjelman mukana asentuu myös
Anaconda prompt -komentorivi, jolla condaa päästään käyttämään.

Asenna [Miniconda3](https://docs.anaconda.com/miniconda/) conda-distribuutio.
Asennukseen on sekä graaffinen- että komentorivikäyttöliittymä.

### Asennus komentorivillä

Noudata Minicondan omia [asennusohjeita](https://docs.anaconda.com/miniconda/#quick-command-line-install):

1. Valitse yllä linkatulla ohjesivulla välilehti **Windows Command Prompt**
1. Aja ohjeen komennot komentorivillä

### Tarkista toimiiko asennus

Condalla pitäisi nyt voida luoda ympäristöjä sekä asentaa paketteja.

Avaa ensin conda-komentorivi, eli **Anaconda Prompt (miniconda3)**.
Tämän jälkeen aja alla olevat komennot auenneessa komentorivi-ikkunassa.

Luo testiympäristö ja aktivoi se:
```console
conda create --name test
```
```console
conda activate test
```

Asenna testiympäristöön JupyterLab-paketti:
```console
conda install --channel conda-forge jupyterlab
```

Käynnistä JupyterLab (huomaa väli):
```console
jupyter lab
```

JupyterLabin pitäisi käynnistyä selaimessa.
Jos selainsivu ei aukea automaattisesti,
kopioi komentorivi-ikkunassa näkyvä linkki selaimen URL-kenttään.
