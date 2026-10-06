# KI Klima/Strøm-kort 1.24.0

Følger KI Energi 2.33.0. Ingenting var ødelagt med det gamle kortet — alle entitetene det
bruker finnes fortsatt — men de nye innstillingene var usynlige.

## Nytt i kortet

- **Frostvakt** — egen blokk under *Oppsett → Moduser og unntak*: utegrense for påslag, påslag,
  alarmgrense, og «Varmtvann klart før hjemkomst». Bryteren «Frostvakt» ligger under *Varme og
  komfort*. Statusraden øverst viser «Frostvakt +4°» når påslaget er aktivt, og et rødt
  «Frostfare: Bod (3,8 °C)» når et rom er under alarmgrensen.
- **Forvarming maks** (timer) ved siden av «Helg auto etter». Notatet forklarer at forvarmingen nå
  regnes med lært oppvarmingsevne og dagens utetemperatur.
- **Tidskonstanter** viser også oppvarmingsevnen («evne 3,2»), og notatet om nattsenking er rettet:
  det er rom som ikke rekker å kjøle seg ned på en natt som ikke lønner seg, ikke lange
  tidskonstanter generelt.
- **Nettleie:** merker for «tre høyeste timer» (svensk modell), «utenfor høylast» og
  høylastvinduet når det er satt.
- **Elbillader:** bryteren «Bare om natten», med faser og spenning i underteksten.
- **Vann og bad:** «VVB hviler når alle er borte».

### Kontrollert

`node --check` på kortet. Entitetene er lagt til i listen kortet følger, så blokkene tegnes på
nytt når de endrer seg. Ikke sett i et ekte dashbord.
