# KI Klima/Strøm-kort 1.15.0

## «Etter dusj» vises bare når fuktsensoren er satt opp

Blokka sto der alltid, med tre innstillinger som ikke kunne virke.

Sjekken min var sann uansett, på to måter samtidig: `fukt_styring` er `false` og ikke
`null` når sensoren mangler, og bryteren `ki_hanklevarmer_fukt` lages alltid av
integrasjonen — så begge leddene i `||` slo til.

Nå brukes `har_fuktsensor` fra KI Energi 2.27.0, som sier om en sensor faktisk er valgt.
Er du på en eldre versjon uten attributtet, faller kortet tilbake på om det finnes en
fuktmåling — den finnes bare når en sensor er satt opp.

Tre innstillinger som ikke kan virke er verre enn ingen, og verst når man ikke ser at de
ikke virker.

### Kontrollert

Ny integrasjon: uten sensor skjult, med sensor vist både når styringen er av og på.
Eldre integrasjon: skjult uten måling, vist med måling.

---

# KI Klima/Strøm-kort 1.14.2

Fanerada i Vann og bad har søvnpopupens fylte form, og en feil der håndklevarmeren ble
vist uten at fanen fantes er rettet.
