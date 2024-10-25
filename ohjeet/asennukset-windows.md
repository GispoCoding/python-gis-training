# Asennukset

## Conda

Ainoa kurssilla tarvittava asennus on conda-paketinhallintatyökalu.
Windows -käyttöjärjestelmässä ohjelman mukana asentuu myös
Anaconda prompt -komentorivi, jolla condaa päästään käyttämään.

### Asennusohjeet

Asenna [Miniconda3](https://docs.anaconda.com/miniconda/) conda-distribuutio.
Asennukseen on sekä graaffinen- että komentorivikäyttöliittymä.

#### Asennus komentorivillä

Noudata Minicondan omia [asennusohjeita](https://docs.anaconda.com/miniconda/#quick-command-line-install):

1. Valitse yllä linkatulla ohjesivulla välilehti **Windows Command Prompt**
1. Aja ohjeen komennot komentorivillä

### Tarkista toimiiko asennus ja kurssiympäristö

Condan pitäisi nyt olla asennettuna,
ja sillä pitäisi voida luoda ympäristöjä sekä asentaa paketteja.

Avaa siis ensin **Anaconda Prompt (miniconda3)**

Luo testiympäristö ja aktivoi se:
```
conda create --name test
```
```
conda activate test
```

Asenna testiympäristöön JupyterLab-paketti:
```
conda install --channel conda-forge jupyterlab
```

Käynnistä JupyterLab (huomaa väli):
```
jupyter lab
```

JupyterLabin pitäisi käynnistyä selaimessa.
Jos selainsivu ei aukea automaattisesti,
kopioi komentorivi-ikkunaan tulostuneissa ohjeissa näkyvä linkki
selaimen URL-kenttään.
