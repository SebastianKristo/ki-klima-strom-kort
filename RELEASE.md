# KI Klima/Strøm-kort 1.7.1

## Elbillader-fanen skjules når laderen ikke er satt opp

Fanen sto der uansett, med et notat om at ladingen ikke var konfigurert. En fane som bare
forteller at den er tom er verre enn ingen fane.

Den vises nå bare når laderen faktisk er koblet til KI Energi. Flagget `lading` fra
`sensor.ki_energi_status` avgjør — det betyr noe annet enn `elbil`, som fantes fra før:
`elbil` sier at huset har elbil, `lading` at laderen er satt opp i integrasjonen.

### To detaljer som måtte løses

**`_har()` har `true` som standard.** En eldre integrasjon som ikke kjenner flagget ville
derfor vist fanen. Kortet spør nå om flagget *finnes*, og faller ellers tilbake på om
`sensor.ki_lading_status` er der og ikke står på «ingen». Begge må svare nei før fanen
skjules.

**Man kan stå i fanen når den forsvinner** — fjerner du laderen fra oppsettet mens kortet
er åpent. Da faller kortet tilbake til Oversikt i stedet for å vise en tom side.

### Kontrollert

Seks tilfeller: flagget true og false, eldre integrasjon med statussensor som lader,
eldre integrasjon med status «ingen», eldre integrasjon uten statussensoren, og en tom
tilstandsliste. Bare det første og tredje viser fanen. Tilbakefallet til Oversikt
testet for seg.

---

# KI Klima/Strøm-kort 1.7.0

Ny fane Elbillader: status med ledig effekt som forklarer alt annet på siden, varsel når
bilen tar mindre enn den får, alle fire trinn med om de får plass, og innstillingene for
automatikk, minste tid mellom endringer og dødbånd.
