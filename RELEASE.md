# KI Klima/Strøm-kort 1.15.1

## Bortemodus flyttet ned i Oversikt

Blokka lå nest øverst, rett under heroen. Nå står den mellom **Modus** og **Varmtvann**.

Det henger bedre sammen: modusbryterne står rett over, og bortetemperaturene er
finjusteringen av det man nettopp slo på. Øverst konkurrerte den med budsjettet og
tiltakene, som er det man faktisk ser etter når man åpner kortet.

Rekkefølgen i Oversikt er nå: overtakelse, leggetid, budsjett, forventet effekt, modus,
tiltak akkurat nå, **bortemodus**, varmtvann.

Kontrollert: blokka står ett sted, etter Modus og før Varmtvann.

---

# KI Klima/Strøm-kort 1.15.0

«Etter dusj» vises bare når fuktsensoren faktisk er satt opp. Krever KI Energi 2.27.0 for
`har_fuktsensor`, med fallback på eldre.
