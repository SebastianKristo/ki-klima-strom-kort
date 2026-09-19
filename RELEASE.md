# KI Klima/Strøm-kort 1.12.0

## Borte-kortet ble for høyt på mobil

Hjemkomsten tok tre linjer. Nå står tid og resttid på samme rad med stripa under — to
linjer i stedet for tre.

Huset **krymper** under 620 px i stedet for å forsvinne, til 92 px uten undertekst. Det
er huset som viser tilstanden, så det skal være det siste som ryker. Under 400 px er det
ingen plass igjen, og da går det ut.

## «Hjemkomst 13:00» på en lørdag

Det var en feil i integrasjonen, ikke i kortet: `hjemkomst_tid` ble publisert **alltid**,
også når ingen hjemkomst var planlagt. Tallet var bare standardverdien i innstillingen, og
kortet leste det som en plan.

Kortet krever nå `hjemkomst_aktiv` i tillegg. Retter du bare kortet, forsvinner linja
uansett — men **KI Energi 2.26.0 fikser kilden**, og publiserer `hjemkomst_tid` bare når
en hjemkomst faktisk er satt i gang. Innstillingen ligger nå i
`hjemkomst_tid_innstilling` for den som vil vise den.

## Fanene kan ordnes i UI

Editoren har fått en faneliste: piler for rekkefølge, øye for å skjule.

* **Rekkefølge** lagres som `faner: [energi, oversikt, ...]`
* **Skjul** tar fanen ut av lista, og den er fortsatt synlig i editoren så du kan
  hente den tilbake
* **Vis navn på fanene** av gir rene ikonfaner

Rekkefølgen i editoren viser alltid alle åtte, også de du ikke har rørt — ellers ville en
fane du aldri har flyttet forsvunnet fra lista.

Ukjente navn i `faner:` hoppes over, og er ingen gyldige igjen, vises alle. En skrivefeil
skal ikke gi et tomt kort.

### Om kortene inne i fanene

De kan ikke flyttes herfra. Innholdet i hver fane er bygget av kortet — det er ikke en
liste med Lovelace-kort, men blokker koden setter sammen ut fra hva som finnes.

Skal de kunne ordnes, må hver blokk få et navn og en rekkefølge i konfigurasjonen. Det er
en større endring, og jeg vil heller gjøre den bevisst enn å halvveis stikke den inn her.
Si fra hvis det er verdt det.

### Kontrollert

Fanerekkefølge opp og ned, skjul og vis igjen, `faner:` skrevet riktig ut, og kortet som
følger rekkefølgen. Ukjente navn og tom liste faller tilbake til alle fanene.
