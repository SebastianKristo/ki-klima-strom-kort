# KI Klima/Strøm-kort 1.22.0

## Hjemkomsten telles ned mot tidspunktet, ikke mot klokkeslettet

Søndag kl. 13.00, varselet besvart med ja — og kortet sa «Hjemkomst om 23 t 45 min».

Kortet regnet nedtellingen av `hjemkomst_tid`, som er klokkeslettet i innstillingen, og la
på et døgn så snart det var passert. Men integrasjonen setter noe annet: svarer du ja etter at
innstilt tid er passert, blir planen «om 30 minutter». På hytta planlegges ankomsten til og med
på en annen dag, og det kan et klokkeslett aldri fortelle.

Nå leses hele tidspunktet, i denne rekkefølgen:

1. `hjemkomst_planlagt` på `sensor.ki_tilstedevaerelse` (krever KI Energi 2.30.0)
2. `datetime.ki_hjemkomst_planlagt` direkte, for eldre integrasjon
3. klokkeslettet, som før — men **uten** døgnpåslaget

Er tidspunktet passert, står det «når som helst» og stripa er full, i stedet for at nedtellingen
starter på nytt mot i morgen. Er hjemkomsten en annen dag, står ukedagen foran klokkeslettet
(«Hjemkomst fre 17:00»), slik at hytteankomst ikke ser ut som i dag.

### Kontrollert

`node --check` på hele fila. Tre kilder til målet, med fallback i rekkefølge; ugyldig dato i
noen av dem hoppes over i stedet for å gi «NaN». Nedtellingen vises bare når hjemkomst faktisk er
aktiv, som før — kravet om `hjemkomst_tid` er tatt bort, siden tidspunktet nå kan komme fra
entiteten alene.
