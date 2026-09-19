# KI Klima/Strøm-kort 1.11.0

## Tilstedeværelsen er flyttet inn i heroen

Den lå som en egen blokk rett under heroen — to flater med samme tema, og en margin
mellom dem som ikke hadde noen grunn til å være der.

Nå står den i heroen som en pille under forklaringen, med farge etter tilstand: grønn
hjemme, gul ved kort tur, blå når huset står tomt.

**I borte får hele flata en kjøligere farge.** Da ser du tilstanden før du leser noe, på
samme måte som bassengkortet blir rødt når varmepumpa varmer.

## Huset, med animasjon i begge tilstandene

Samme tegning hjemme og borte — **forskjellen er farten og styrken, ikke to ulike
bilder**. Hjemme lyser alle tre vinduene og varmen stiger tydelig i oransje på 3,4
sekunder. Borte pulserer ett vindu langsomt, og varmen er svak og blå på 9 sekunder.

Det leses da som en grad og ikke som to atskilte tilstander, og koden er én scene med
parametere i stedet for to tegninger som må holdes i takt.

Huset skjules under 560 px, der heroen trenger bredden til teksten.

## Hjemkomst er en stripe

«Varmer opp om 2 t 10 min» er det man lurer på, ikke klokkeslettet. Stripa fylles fra da
bortemodus startet til hjemkomsten, så du ser hvor langt inn i ventetiden dere er.

## Innstillingene er beholdt

Blokka som ble flyttet inneholdt også bryterne for bortemodus og de fire
bortetemperaturene. De står igjen under Oversikt, nå under overskriften «Bortemodus» —
det er bare statusdelen som er flyttet opp.

### Kontrollert

Fire tilstander: hjemme (tre vinduer, varm flate), kort tur (samme hus, gul pille), borte
(kjølig flate, ett vindu, hjemkomststripe på 87 %), og uten sensoren i det hele tatt, der
heroen er som før.
