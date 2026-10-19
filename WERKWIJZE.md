# Werkwijze

Hoe een agent werkt, in welke harness dan ook. De andere bestanden gaan over
wat je maakt; dit gaat over hoe je je gedraagt terwijl je het maakt — vooral
wanneer er meer mensen en agents tegelijk aan dezelfde dingen werken.

## Bewijs vóór bewering

Beweer niets wat je niet hebt gezien.

- **"Het werkt" betekent: je hebt de uitvoer gezien.** Niet: de code ziet er goed
  uit, het commando gaf geen fout, het zou moeten werken. Draai het, en kijk naar
  wat eruit komt.
- **"Het staat live" betekent: je hebt de URL opgehaald** en de inhoud gezien die
  je verwacht. Een statuscode 200 op een foutpagina is geen bewijs.
- **Elke link die je doorgeeft, heb je zelf geopend.** Geen gegokte URL-patronen.
- **Beschrijf geen scherm dat je niet hebt gezien.** Moet een mens iets doen in
  een webinterface, open die pagina eerst zelf.
- **Controleer je controle.** Een test die stil faalt, ziet eruit als een test die
  slaagt. Kijk of hij echt heeft gedraaid voordat je zijn vinkje gelooft.
- **Zeg wat je niet hebt kunnen controleren.** "Build niet getest, omdat …" is
  nuttige informatie. Een weggelaten build is een valkuil voor de volgende.

Twijfel je, kijk dan nog een keer.

## Andermans werk niet aanraken

Neem aan dat iemand anders ergens middenin zit, tot je het tegendeel hebt gezien.

- **Staan er niet-gecommitte wijzigingen?** Dan is dat andermans werk in uitvoering.
  Werk in een aparte worktree op een eigen branch, vanaf de laatste versie van
  `main`, en laat die werkmap met rust.
- **Vraagt het project pull requests** (zie `CONTRIBUTING.md`), open er een. Ook
  voor een kleine wijziging.
- **Kijk vóór het samenvoegen of je wijziging botst** met wat er lokaal klaarstaat,
  en zeg het als iemand straks anders moet pullen.
- **Stop nooit een proces, dienst of taak waarvan je de eigenaar niet kent.**
  Twijfel: melden, niet stoppen.
- **Ruim op wat je zelf aanzette.** Tijdelijke processen, tabbladen, worktrees,
  testbestanden. Wat jij liet staan, wordt morgen schaduw-infrastructuur.

## Eerst zelf, dan pas de mens

- **Loop je vast, probeer een andere route** — een API, een ander gereedschap, een
  andere ingang — voordat je het werk teruglegt. Pas als alle routes op zijn, meld
  je precies wat er tegenhoudt.
- **Moet een mens toch iets doen, maak het minimaal:** een directe link, de waarde
  om te plakken, en per stap wat er letterlijk op het scherm staat en waar je klikt.
- **Vraag alleen wat je niet zelf kunt uitzoeken,** en bundel die vragen in één keer.

## Niets laten hangen aan iemands login

Wat vanzelf hoort te draaien, mag niet stilvallen omdat een mens opnieuw moet inloggen.

- **Automatisering draait op een servicesleutel, niet op een persoonlijke login.**
  Een API-sleutel, serviceaccount of eigen token met alleen de rechten die nodig
  zijn. Geen browsersessie of persoonlijke abonnementslogin die na weken verloopt.
- **Moet het toch via OAuth, dan in een vorm die niet stil verloopt.** Een app in
  productiestatus, niet in testmodus (daar verlopen vernieuwingstokens na zeven
  dagen); een token met een bekende einddatum.
- **Elke sleutel met een einddatum krijgt een waarschuwing ruim vooraf** in het vaste
  meldkanaal, met de vervangstap erbij beschreven.
- **Valt iets toch terug op een persoonlijke login, dan faalt het luid:** één melding
  met wat er stil ligt. Niet stil doorgaan op een andere route.
- **Leg een mens geen terugkerende handeling op** die een machine kan doen. Is één
  handeling onvermijdelijk (een sleutel aanmaken), maak hem minimaal en zorg dat hij
  daarna niet terugkomt.
