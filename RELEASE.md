# KI Klima/Strøm-kort 1.13.0

## Modusene sto to steder

«Bortemodus» og «Hjemkomst» lå både i Bortemodus-blokka og i Modus-blokka rett under —
samme bryter, to steder å trykke.

Modus-blokka eier dem nå. Igjen i Bortemodus står «Slå på automatisk», som hører til
bortestyringen og ikke er en modus man slår på selv, pluss de fire bortetemperaturene.

## Fanene har fått søvnpopupens form

Bereder/Håndklevarmer under Vann og bad, og Temperatur/Effekt inne i sonene, hadde løse
piller uten ramme — de så ut som knapper, ikke faner.

Nå: én rund ramme rundt gruppa, aktiv fane fylt med `--active-big` og mørk tekst, samme
som fanerada i søvnpopupen. De små beholder tettere padding, siden de står inne i en
sammenleggbar blokk og ikke skal konkurrere med overskriften over.

## «Glemt lys» brøt til to linjer

Raden fikk flyte fritt, så merket havnet på linje to selv når det var plass.

Navnet ligger nå i sin egen `.navntekst` som krymper med ellipse, og merkene har
`flex:none`. Lange navn som «Sebastians soverom takbelysning» kortes ned i stedet for å
dytte merket ned.

Navnet måtte i en egen span: det var en naken tekstnode, og en tekstnode kan verken
krympe eller få `text-overflow`.

### Kontrollert

Underfanene tegnes med ramme og riktig aktiv fane. Lysraden med et langt navn gir navn i
egen span og to merker på samme linje. Bortemodus-blokka inneholder ikke lenger
`ki_helgemodus` eller `ki_hjemkomst_aktiv`, men fortsatt `ki_helg_auto`.

---

# KI Klima/Strøm-kort 1.12.0

Borte-kortet er lavere på mobil, «Hjemkomst 13:00» vises bare når en hjemkomst faktisk er
planlagt, og fanene kan ordnes i editoren.
