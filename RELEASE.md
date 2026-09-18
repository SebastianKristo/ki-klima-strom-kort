# KI Klima/Strøm-kort 1.8.0

## Fuktstyringen mangler ikke lenger i kortet

Fuktstyringen kom i KI Energi 2.23.0, men kortet viste den aldri. Innstillingene fantes
bare som entiteter man måtte finne selv.

Ny blokk «Etter dusj» under Vann og bad → Håndklevarmer.

**Blokka vises bare når en fuktsensor er valgt i integrasjonen.** Er den ikke det, er hele
funksjonen utilgjengelig, og tre innstillinger som ikke kan virke er verre enn ingen.

### Status øverst

Fukten nå, med en tilstand i klartekst: «Tørt på badet», «Fuktig — teller ned», eller
«Tørker håndklær» når vinduet er åpent. Er vinduet åpent, står minuttene som er igjen i
overskriften i stedet for fuktprosenten.

Under kommer en **målebar** som viser hvor langt fukten er fra å utløse, oransje når
grensen er passert. Et tall alene sier lite når man ikke vet hva som er høyt på nettopp
dette badet — 62 % kan være tørt ett sted og nesten utløsende et annet.

Baren skjules når vinduet alt er åpent; da er fukten ikke lenger det som avgjør.

### Innstillingene

Bryteren for å slå på funksjonen, fuktgrensen, hvor mange minutter fukten må holde seg
over, og hvor mange timer varmeren står på.

Notatet forklarer hvorfor «sammenhengende» er poenget: et øyeblikksmål ville slått på
varmeren hver gang noen vasker hendene, og det som skiller en dusj er at fukten blir
stående.

### Kontrollert

Seks tilstander: uten fuktsensor (ingen blokk i det hele tatt), tørt, på vei opp, over
grensen, i vindu med minutter igjen, og sensor uten måling. Baren fyller riktig andel og
blir oransje først over grensen.

---

# KI Klima/Strøm-kort 1.7.1

Elbillader-fanen skjules når laderen ikke er satt opp, styrt av flagget `lading` fra
`sensor.ki_energi_status`. Står man i fanen når den forsvinner, faller kortet tilbake til
Oversikt.

# KI Klima/Strøm-kort 1.7.0

Ny fane Elbillader: status med ledig effekt, varsel når bilen tar mindre enn den får, alle
fire trinn med om de får plass, og innstillingene for automatikk, minste tid mellom
endringer og dødbånd.
