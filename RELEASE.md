# KI Klima/Strøm-kort 1.6.0

## Tilstedeværelse og bortestyring

Ny blokk øverst i Oversikt. Er noen hjemme, ute en tur, eller borte siden helgen?

Integrasjonen skiller mellom de to siste — en tur på butikken skal ikke senke huset,
bortreist skal — men skillet sto ingen steder i kortet.

Blokka leser `sensor.ki_tilstedevaerelse` (ny i KI Energi 2.20.0) og viser teksten med
farge etter alvor: grønn når noen er hjemme, gul ved kort tur, blå ved bortemodus, dempet
når tilstedeværelse er ukjent. Under står hvor lenge, og når hjemkomsten er satt til.

Ved kort tur står nedtellingen i teksten — «Ute en tur, 40 min — bortemodus om 5 t 20
min». Det er det man vil vite når man er ute: hvor lang tid før huset senker seg.

Under teksten ligger **bortestyringen**, som manglet i Oversikt: bryterne for bortemodus,
automatisk aktivering og hjemkomst, og de fire tallene — timer før auto, og
bortetemperaturene for panelovn, gulvvarme og bad. Trykk på et tall åpner det.

Blokka faller bort hvis sensoren ikke finnes, så kortet er uendret på en eldre
integrasjonsversjon.

## «Helgemodus» heter «Bortemodus»

Samme navnebytte som i KI Energi 2.19.0. På en hytte er det ukedagene den står tom, og
navnet var grunnen til at bortestyringen ikke var å finne når man lette etter
fraværstemperatur.

Entitets-ID-ene er uendret — `input_boolean.ki_helgemodus` og de andre — så ingenting i
dashbordene eller automasjonene brekker.

## Merk

Endringen er gjort i dette repoet. Kortet finnes også som en kopi inne i `ki-cards`, og
de to har kommet ut av takt: kopien der står på et høyere versjonsnummer med en annen
kodebase. Det er dette repoet Home Assistant laster, og det er her endringer hører.
