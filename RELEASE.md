# KI Klima/Strøm-kort 1.7.0

## Ny fane: Elbillader

Alt om ladingen på ett sted, mellom «Vann og bad» og «Tanker». Leser
`sensor.ki_lading_status` fra KI Energi 2.21.0.

### Status

Handling i klartekst med farget prikk — lader, justerer, stopper, står, manuell — og
motorens egen forklaring som undertittel.

**«Ledig effekt» er tallet som forklarer alt annet på siden.** Bilen er husets siste
last: den får bare det varmen, berederen og marginen ikke bruker. Står det 0,3 kW, lader
den ikke, og det er ikke en feil. Uten den linja ser en stoppet lading ut som noe som er
galt.

Er differansen mellom satt trinn og målt effekt over en halv kilowatt, kommer det en egen
rad: «Bilen tar mindre enn den får». Det skjer når bilen er nesten full eller kald, og
differansen er da gitt til varmen — verdt å se, ellers ser det ut som ladingen
underpresterer.

### Trinnene

Alle fire — 5, 10, 16 og 18 A — med effekt ved 230 V enfase, og for hvert om det får
plass i det ledige nå. Trinnet i bruk er merket, og et trinn uten knapp i integrasjonen
merkes «mangler knapp» i stedet for bare å være borte.

### Innstillinger

Automatikk av og på, minste tid mellom endringer, og dødbånd. Notatet forklarer hvorfor
begge sperrene finnes: bilens effektsensor oppdaterer seg ved hver strømendring, så uten
dem ville hver måling utløst en ny endring.

### To detaljer i koden

Tallfeltene fikk egen klasse `.tallfelt`. `.tall` var alt i bruk for visningsboksene med
`<b>` og `<span>` i Energi-fanen, og ville gitt inndatafeltet feil form. Dette er de
første `type="number"`-feltene i kortet; hendelseshåndtereren støttet dem allerede.

Entitetene skrives som `input_boolean.` og `input_number.` i malen, som resten av kortet,
og `mapId` oversetter til integrasjonens `switch.` og `number.`.

### Kontrollert

Fem tilstander tegnet: uten sensoren (forklarende notat i stedet for tomme rader), lader
på 16 A, bilen som tar mindre enn den får, manglende knapp merket på to rader, og
automatikk av med bryteren i riktig stilling.
