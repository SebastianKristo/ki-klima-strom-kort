# KI Klima/Strøm-kort 1.20.0

## Baderomsvifta i samme blokk som håndklevarmeren

«Etter dusj» under Vann og bad → Håndklevarmer styrer nå begge.

Vifta fikk **ikke** egen blokk, og det var et bevisst valg: de utløses av den samme
fuktmålingen, og grensen og varigheten over gjelder begge. Sto grensen to steder, ville
det bare være et spørsmål om tid før de kom ut av takt i hodet på den som leser.

Det eneste vifta har for seg selv er hvor lenge den går — **minutter, ikke timer**. Den
skal lufte ut, ikke tørke håndklær.

### Nye rader under «Baderomsvifte»

* **Slå på vifta etter dusj**, med «samme fuktgrense som over» som forklaring
* **Lufter i** — minutter etter at fukten utløste, standard 20
* **Lufter nå · 13 min**, men bare når vifta faktisk går

Notatet sier også at motoren ikke slår av en vifte du har startet selv.

Radene vises bare når en vifte er valgt i integrasjonen (`har_badvifte`, KI Energi
2.28.0). Hele blokka krever fortsatt en fuktsensor — uten den er verken varmer eller
vifte styrt av fukt.

### Kontrollert

Fire tilfeller: uten vifte (fem rader, ingen underoverskrift), med vifte som står stille
(sju rader), med vifte som lufter (åtte rader og «13 min»), og uten fuktsensor der hele
blokka er borte.

---

# KI Klima/Strøm-kort 1.19.0

Trinnlista følger bilens egne knapper via `trinn_tilgjengelig`.
