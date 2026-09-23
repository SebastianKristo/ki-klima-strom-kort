# KI Klima/Strøm-kort 1.23.0

## Gjennomgang: fire feil rettet

**Ett trykk slo bryteren flere ganger.** Klikklytterne ble lagt til for hver gang kortet ble bygget —
og kortet bygges på nytt ved hver endring i editoren. Etter tre tastetrykk lå det fire lyttere der,
og ett trykk kalte tjenesten fire ganger. Lytterne settes nå én gang, på skyggeroten, som overlever
en ny bygging.

**Kortet sto med gamle tall.** Kortet tegnet bare på nytt når *tilstanden* til en sensor endret seg.
Men `sensor.ki_laster`, prognosen og tilstedeværelsen bærer nesten alt i attributtene, og de kan
endre seg uten at tilstanden gjør det. Kortet sammenligner nå tilstandsobjektene på referanse — Home
Assistant lager et nytt objekt for hver endring, attributter medregnet.

**Flere historikkforespørsler i parallell.** `_tegn` kan kjøre flere ganger i sekundet når
sensorene melder, og hver kjøring sendte sin egen forespørsel etter tolv timer historikk. Svarene kom
tilbake i tilfeldig rekkefølge og skrev over hverandre. Nå går ett kall om gangen.

**Langt trykk uten respons på iPhone.** `navigator.vibrate` finnes ikke i Safari. Kortet sender nå
også `haptic`-eventet Home Assistant-appen lytter på.

### Kontrollert

`node --check` og kjøring i en simulert DOM: attributtendring gir ny tegning, samme tilstandsobjekt
to ganger gir ingen, to nye bygginger legger ikke til flere klikklyttere, og kortet tegnes etter en ny
bygging selv om ingen sensor har endret seg imens.
