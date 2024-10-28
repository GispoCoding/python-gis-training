## Kurssiympäristö kontissa

Voit ajaa kurssiympäristöä kontissa,
jolloin tarvitset vain docker- / podman-asennuksen.

Aja komennot repositorion juuressa.

Rakenna kontti:

```console
docker build . --tag gis-lab:latest
```

Aja kontti:

```console
docker run -it --rm -v ./:/home/lab-user/gis-lab --network host gis-lab:latest
```

Olet nyt komentorivillä, jossa voit käyttää kurssin conda-ympäristöä:

```console
conda activate gis
```

```console
jupyter lab
```

**Windows**- ja **macOS** -ympäristössä `--network host` ei ilmeisesti toimi.
aja kontti siis määritämällä portti:

```console
docker run -it --rm -v ./:/home/lab-user/gis-lab -p 8888:8888 gis-lab:latest
```

Tämä aiheuttaa sen, että jupyter lab täytyy käynnistää hieman eri tavoin:

```console
jupyter lab --ip 0.0.0.0
```
