# KI Klima/Strøm-kort 1.17.0

## Sonegrafene virket ikke

To feil, og begge ga samme symptom: «Ingen temperaturhistorikk ennå» selv når
historikken fantes.

### Cachen hindret hentingen

`_hentHistorikk` sjekket cachen **før** den regnet ut hvilke entiteter den trengte:

```js
if (this._hist && naa - this._histTid < 120000) { this._tegnGrafer(); return; }
```

Åpnet du en sone, ble dens sensorer lagt til i lista — men vi returnerte på den to
minutter gamle cachen og hentet dem aldri. Sonegrafene sto derfor tomme til cachen gikk
ut, og fylte seg gjerne aldri fordi noe annet varmet den opp igjen først.

Nøkkelen regnes nå først, og cachen gjelder bare når den dekker **nøyaktig de samme**
entitetene.

### Bytte mellom Temperatur og Effekt slettet grafen

Knappene kalte `_tegn()`, som bygger hele panelet på nytt — og da ble den ferdige grafen
byttet ut med plassholderen igjen. Det så ut som om knappene ikke virket.

Nå byttes bare den aktive fanen og grafen tegnes om, uten å røre resten av panelet.

### Kontrollert

Nøkkelen regnes før cachesjekken, og cachen krever samme nøkkel. Simulert: samme
entiteter gir cache, en nyåpnet sone gir henting — der den før ga cache. Fanebyttet
kaller ikke lenger `_tegn()`.

---

# KI Klima/Strøm-kort 1.16.0

Husanimasjonen går jevnt: bølgene spres over hele syklusen i stedet for det første
sekundet. «Hvem styrer ovnene» sto to steder og er nå bare nederst i Oppsett.
